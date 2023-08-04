import { sendEmail, generateTokenSign, validToken } from '../tools';
import pool from '../database';
import fs from 'fs';
import configEnv from '../config';
import jwt from 'jsonwebtoken';
import { getSocketInstance } from '../socket';
import { getSocketId } from '../socketHandlers/user.handlers';

export const sendMailVerification = async (req, res) => {
	try {
		const { email } = req.body;
		const [results]: any = await pool.query(
			'SELECT * FROM usuario WHERE email = ?',
			[email],
		);

		if (results.length === 0) {
			res.status(404).send('Email does not exist');
		} else {
			const token = generateTokenSign({ email }, 86400);
			const mail = await sendEmail(email, 'verification', token);
			const myPromise = new Promise((resolve, reject) => {
				// Simulamos una operación asincrónica que tarda 2 segundos en completarse
				const success = true;

				if (success) {
					// La operación se completó correctamente
					resolve('Operación exitosa');
				} else {
					// La operación falló
					reject('Error en la operación');
				}
			});
			await myPromise
				.then((result) => {
					console.log('Promesa resuelta:', result);
				})
				.catch((error) => {
					console.error('Promesa rechazada:', error);
				});
			res.json({ email, token, mail });
		}
	} catch (error) {
		res.status(500).json(error);
	}
};
export const sendMailInvitation = async (req, res) => {
	try {
		const { contactos, user } = req.body;
		console.log(req.body);
		contactos.forEach(async (contacto) => {
			await sendEmail(contacto.email, 'invitation', user);
		});
		res.json({ contactos, user });
	} catch (error) {
		res.status(500).json(error);
	}
};
export const sendMailResetPassword = async (req, res) => {
	try {
		const { email } = req.body;
		const [results]: any = await pool.query(
			'SELECT * FROM usuario WHERE email = ?',
			[email],
		);

		if (results.length === 0) {
			res.status(404).send('Email does not exist');
		} else {
			const token = generateTokenSign({ email }, '2h');
			const mail = await sendEmail(email, 'passwordReset', token);

			res.json({ email, token, mail });
		}
	} catch (error) {
		res.status(500).send(error);
	}
};
export const sendMailChangeMail = async (req, res) => {
	try {
		const { email, newEmail } = req.body;
		const [results]: any = await pool.query(
			'SELECT * FROM usuario WHERE email = ?',
			[email],
		);
		const [results2]: any = await pool.query(
			'SELECT * FROM usuario WHERE email = ?',
			[newEmail],
		);

		if (results.length === 0) {
			res.status(404).send('Email does not exist');
		} else if (results2.length > 0) {
			res.status(404).send('New email already exists');
		} else {
			const token = generateTokenSign({ email, newEmail }, 86400);
			console.log(newEmail);
			const mail = await sendEmail(newEmail, 'changeEmail', token);

			res.json({ email, token, mail });
		}
	} catch (error) {
		res.status(500).send(error);
	}
};
export const sendMailNewContact = async (req, res) => {
	try {
		const { solicitante, receptor } = req.body;
		const token = generateTokenSign({ solicitante, receptor });

		const mail = await sendEmail(receptor.email, 'newContact', {
			solicitante,
			token,
		});
		res.json({ mail });
	} catch (error) {
		res.status(500).send(error);
	}
};
export const verifyTokenNewContact = async (req, res) => {
	try {
		const token = req.params.token;
		const tokenResponse: any = validToken(token);
		const { solicitante, receptor } = tokenResponse;
		console.log('solicitante:::', solicitante);
		console.log('receptor:::', receptor);
		const idUser = solicitante.id;
		const idToMatch = receptor.id;
		const [results]: any = await pool.query(
			'SELECT * FROM usuario_contacto WHERE usuario_id = ? AND contacto_id = ?',
			[idUser, idToMatch],
		);

		if (results.length === 0) {
			await pool.query(
				'INSERT INTO usuario_contacto (usuario_id,contacto_id) VALUES (?, ?)',
				[idUser, idToMatch],
			);
			await pool.query(
				'INSERT INTO usuario_contacto (usuario_id,contacto_id) VALUES (?, ?)',
				[idToMatch, idUser],
			);
			await pool.query(
				'DELETE FROM usuario_solicitudes WHERE solicitante_id = ? AND receptor_id = ?',
				[idUser, idToMatch],
			);
			await pool.query(
				'DELETE FROM usuario_notificaciones WHERE usuario_id = ?',
				[idToMatch],
			);
			await pool.query(
				'INSERT INTO usuario_conversaciones (nombre, usuario_id_1, usuario_id_2) VALUES (?, ?, ?)',
				['chat', idUser, idToMatch],
			);
			const socketId = await getSocketId(idToMatch);
			const socketIdSolicitante = await getSocketId(idUser);
			const ioSocket = getSocketInstance();

			if (socketIdSolicitante) {
				const [userData]: any = await pool.query(
					'SELECT * FROM usuario WHERE id = ?',
					[idToMatch],
				);

				const [lenguajesData]: any = await pool.query(
					'SELECT lenguaje FROM usuario_lenguajes WHERE usuario_id = ?',
					[idToMatch],
				);

				const [areaExperienciaData]: any = await pool.query(
					'SELECT experiencia FROM usuario_experiencia WHERE usuario_id = ?',
					[idToMatch],
				);

				const [temasInteresData]: any = await pool.query(
					'SELECT interes FROM usuario_intereses WHERE usuario_id = ?',
					[idToMatch],
				);

				const [tipoConexionData]: any = await pool.query(
					'SELECT conexion FROM usuario_conexion WHERE usuario_id = ?',
					[idToMatch],
				);

				const userDataWithRelations = {
					...userData[0],
					lenguajes: lenguajesData.map((row) => row.lenguaje),
					areaExperiencia: areaExperienciaData.map((row) => row.experiencia),
					temasInteres: temasInteresData.map((row) => row.interes),
					tipoConexion: tipoConexionData.map((row) => row.conexion),
				};
				ioSocket
					.to(socketIdSolicitante)
					.emit('newMatch', userDataWithRelations);
			}

			if (socketId) {
				ioSocket.to(socketId).emit('newMatch', solicitante);
			}
			res.redirect(`${configEnv.URL_FRONT}user/${solicitante.id}`);
		} else {
			res.redirect(`${configEnv.URL_FRONT}user/${solicitante.id}`);
		}
	} catch (error) {
		res
			.status(500)
			.send(
				fs
					.readFileSync(`${configEnv.MAIL_PATH}/tokenInvalid.html`, 'utf8')
					.replace('{{URL}}', configEnv.URL_BACK),
			);
	}
};

export const verifyTokenChangeEmail = async (req, res) => {
	try {
		const { token } = req.params;
		console.log(`token: ${token}`);
		const tokenResponse: any = validToken(token);
		const { email, newEmail } = tokenResponse;
		console.log(email, newEmail);

		const [result]: any = await pool.query(
			'UPDATE usuario SET email = ? WHERE email = ?',
			[newEmail, email],
		);
		if (result.affectedRows > 0) {
			res.redirect(configEnv.URL_FRONT);
		} else {
			res.status(500).send(result);
		}
	} catch (error) {
		console.log(error);
		res
			.status(500)
			.send(
				fs
					.readFileSync(`${configEnv.MAIL_PATH}/tokenInvalid.html`, 'utf8')
					.replace('{{URL}}', configEnv.URL_BACK),
			);
	}
};

export const verifyTokenVerificationEmail = async (req, res) => {
	try {
		const token = req.params.token;
		const tokenResponse: any = validToken(token);
		const { email } = tokenResponse;

		await pool.query('UPDATE usuario SET verificado = ? WHERE email = ?', [
			true,
			email,
		]);
		const [result]: any = await pool.query(
			'SELECT id FROM usuario WHERE email = ?',
			[email],
		);
		const io = getSocketInstance();

		const socketId = await getSocketId(result[0].id);
		console.log(socketId);

		if (socketId) io.to(socketId).emit('emailverification', 1);
		res.redirect(configEnv.URL_FRONT);
		// res.send(
		// 	fs
		// 		.readFileSync(`${configEnv.MAIL_PATH}/mailverifyed.html`, 'utf8')
		// 		.replace('{{URL}}', configEnv.URL_FRONT),
		// );
	} catch (error) {
		res
			.status(500)
			.send(
				fs
					.readFileSync(`${configEnv.MAIL_PATH}/tokenInvalid.html`, 'utf8')
					.replace('{{URL}}', configEnv.URL_BACK),
			);
	}
};

export const resetPasswwordForm = async (req, res) => {
	const token = req.params.token;
	try {
		if (token) {
			const decoded: any = jwt.verify(token, configEnv.SECRET_KEY);
			console.log(decoded);

			res.send(
				fs
					.readFileSync(`${configEnv.MAIL_PATH}/resetPassword.html`, 'utf8')
					.replace('{{TOKEN}}', token)
					.replace('{{URL}}', configEnv.URL_BACK),
			);
		} else {
			return res.status(403).json({ message: 'no token available' });
		}
	} catch (error) {
		res
			.status(500)
			.send(
				fs
					.readFileSync(`${configEnv.MAIL_PATH}/tokenInvalid.html`, 'utf8')
					.replace('{{URL}}', configEnv.URL_BACK),
			);
	}
};
