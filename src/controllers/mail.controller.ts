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
			res.send(
				fs
					.readFileSync(`${configEnv.MAIL_PATH}/mailchangesuccess.html`, 'utf8')
					.replace('{{URL}}', configEnv.URL_FRONT),
			);
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

		 await pool.query(
			'UPDATE usuario SET verificado = ? WHERE email = ?',
			[true, email],
		);
		const [result]: any = await pool.query('SELECT id FROM usuario WHERE email = ?', [email])
			const io = getSocketInstance();

			const socketId = await getSocketId(result[0].id);
			console.log(socketId);

			if (socketId) io.to(socketId).emit('emailverification',1 );
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
