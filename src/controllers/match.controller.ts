import pool from '../database';
import jwt from 'jsonwebtoken';
import configEnv from '../config';
import { getSocketId } from '../socketHandlers/user.handlers';
import { getSocketInstance } from '../socket';

export const createMatch = async (req, res) => {
	const { idToMatch, idUser } = req.body;
	try {
		const [results]: any = await pool.query(
			'SELECT * FROM usuario_contacto WHERE usuario_id = ? AND contacto_id = ?',
			[idUser, idToMatch],
		);

		if (results.length === 0) {
			const [result]: any = await pool.query(
				'INSERT INTO usuario_contacto (usuario_id,contacto_id) VALUES (?, ?)',
				[idUser, idToMatch],
			);
			await pool.query(
				'INSERT INTO usuario_contacto (usuario_id,contacto_id) VALUES (?, ?)',
				[idToMatch, idUser],
			);
			await pool.query(
				'DELETE FROM usuario_solicitudes WHERE solicitante_id = ? AND receptor_id = ?',
				[idToMatch, idUser],
			);
			await pool.query(
				'DELETE FROM usuario_notificaciones WHERE usuario_id = ?',
				[idToMatch],
			);
			const socketId = await getSocketId(idToMatch);

			const [userData]: any = await pool.query(
				'SELECT * FROM usuario WHERE id = ?',
				[idToMatch],
			);

			const [lenguajesData]: any = await pool.query(
				'SELECT lenguaje FROM usuariolenguajes WHERE usuario_id = ?',
				[idToMatch],
			);

			const [areaExperienciaData]: any = await pool.query(
				'SELECT experiencia FROM usuarioareaexperiencia WHERE usuario_id = ?',
				[idToMatch],
			);

			const [temasInteresData]: any = await pool.query(
				'SELECT interes FROM usuariotemasinteres WHERE usuario_id = ?',
				[idToMatch],
			);

			const [tipoConexionData]: any = await pool.query(
				'SELECT conexion FROM usuariotipoconexion WHERE usuario_id = ?',
				[idToMatch],
			);

			await pool.query(
				'INSERT INTO Conversaciones (nombre, usuario_id_1, usuario_id_2) VALUES (?, ?, ?)',
				['chat', idUser, idToMatch],
			);

			const userDataWithRelations = {
				...userData[0],
				lenguajes: lenguajesData.map((row) => row.lenguaje),
				areaExperiencia: areaExperienciaData.map((row) => row.experiencia),
				temasInteres: temasInteresData.map((row) => row.interes),
				tipoConexion: tipoConexionData.map((row) => row.conexion),
			};

			const ioSocket = getSocketInstance();

			if (socketId) {
				ioSocket.to(socketId).emit('newMatch', userDataWithRelations);
			}
			res.status(200).json({
				result,
			});
		} else {
			res.status(500).send('Match ya existe');
		}
	} catch (error) {
		console.error('Error during registered:', error);
		res.status(500).send('registered failed');
	}
};

export const requestMatch = async (req, res, next) => {
	console.log(req.body);
	const { usuario_request, usuario_id } = req.body;

	try {
		await pool.query(
			'SELECT * FROM usuario_solicitudes WHERE solicitante_id = ? AND receptor_id = ?',
			[usuario_request.id, usuario_id],
		);

		if (true) {
			await pool.query(
				'INSERT INTO usuario_solicitudes (solicitante_id,receptor_id,fecha_solicitud,estado) VALUES (?, ?, ?, ?)',
				[usuario_request.id, usuario_id, new Date().toISOString(), 'pendiente'],
			);

			// io.emit('matchRequest', req.body);

			const datos = {
				usuario_id: usuario_id,
				title: '¡Nueva solicitud!',
				message: `${usuario_request.nombre} te ha enviado una solicitud.`,
				data: usuario_request,
				time: new Date().toISOString(),
				type: 'match',
				estado: 'no leido',
			};
			req.body = datos;
			next();
		} else {
			res.status(500).send('Solicitud ya enviada');
		}
	} catch (error) {
		console.error('Error during registered:', error);
		res.status(500).send('registered failed');
	}
};

export const readPendingMatch = async (req, res) => {
	try {
		const token = req.headers['x-access-token'];

		const decoded: any = jwt.verify(token, configEnv.SECRET_KEY);

		const [results]: any = await pool.query(
			'SELECT * FROM usuario_solicitudes WHERE receptor_id = ? AND estado = ?',
			[decoded.id, 'pendiente'],
		);
		console.log(results);
		if (results.length === 0) {
			return res.status(200).json([]);
		} else {
			const ids = results.map((c) => ` id = ${c.solicitante_id} `).join(' OR');
			const [result]: any = await pool.query(
				`SELECT * FROM usuario WHERE ${ids}`,
			);
			res.status(200).json(result);
		}
	} catch (error) {
		console.error('Error during registered:', error);
		res.status(500).send('registered failed');
	}
};

export const readMyRequest = async (req, res) => {
	try {
		const token = req.headers['x-access-token'];

		const decoded: any = jwt.verify(token, configEnv.SECRET_KEY);
		console.log('id:::', decoded.id);

		const [results]: any = await pool.query(
			'SELECT * FROM usuario_solicitudes WHERE solicitante_id = ? AND estado = ?',
			[decoded.id, 'pendiente'],
		);
		console.log(results);
		if (results.length === 0) {
			return res.status(200).json([]);
		} else {
			const ids = results.map((c) => ` id = ${c.receptor_id} `).join(' OR');
			const [result]: any = await pool.query(
				`SELECT * FROM usuario WHERE ${ids}`,
			);
			res.status(200).json(result);
		}
	} catch (error) {
		console.error('Error during registered:', error);
		res.status(500).send('registered failed');
	}
};

export const readMatch = async (req, res) => {
	const { id } = req.params;
	console.log(id);
	try {
		const [results]: any = await pool.query(
			'SELECT * FROM usuario_contacto WHERE usuario_id = ?',
			[id],
		);
		console.log(results);
		if (results.length === 0) {
			return res.status(200).json([]);
		} else {
			const ids = results.map((c) => ` id = ${c.contacto_id} `).join(' OR');
			const [result]: any = await pool.query(
				`SELECT * FROM usuario WHERE ${ids}`,
			);
			const usuarios: any[] = [];
			for (const user of result) {
				const [lenguajesData]: any = await pool.query(
					'SELECT lenguaje FROM usuariolenguajes WHERE usuario_id = ?',
					[id],
				);

				const [areaExperienciaData]: any = await pool.query(
					'SELECT experiencia FROM usuarioareaexperiencia WHERE usuario_id = ?',
					[id],
				);

				const [temasInteresData]: any = await pool.query(
					'SELECT interes FROM usuariotemasinteres WHERE usuario_id = ?',
					[id],
				);

				const [tipoConexionData]: any = await pool.query(
					'SELECT conexion FROM usuariotipoconexion WHERE usuario_id = ?',
					[id],
				);

				const userDataWithRelations = {
					...user,
					lenguajes: lenguajesData.map((row) => row.lenguaje),
					areaExperiencia: areaExperienciaData.map((row) => row.experiencia),
					temasInteres: temasInteresData.map((row) => row.interes),
					tipoConexion: tipoConexionData.map((row) => row.conexion),
				};
				usuarios.push(userDataWithRelations);
			}
			console.log('object', usuarios);

			res.json(usuarios);
		}
	} catch (error) {
		console.error('Error during registered:', error);
		res.status(500).send('registered failed');
	}
};

export const deleteRequestMatch = async (req, res) => {
	const { id } = req.params;
	const token = req.headers['x-access-token'];
	try {
		const decoded: any = jwt.verify(token, configEnv.SECRET_KEY);
		await pool.query(
			'DELETE FROM usuario_solicitudes WHERE solicitante_id = ? AND receptor_id = ?',
			[decoded.id, id],
		);

		const ioSocket = getSocketInstance();
		const socketId = await getSocketId(id);

		if (socketId) {
			ioSocket.to(socketId).emit('deleteRequestMatch', { id: decoded.id });
		}

		res.status(200).json({
			result: 'ok',
		});
	} catch (error) {
		console.error('Error during registered:', error);
		res.status(500).send('registered failed');
	}
};

export const rejectPendingMatch = async (req, res) => {
	const { id } = req.params;
	const token = req.headers['x-access-token'];
	try {
		const decoded: any = jwt.verify(token, configEnv.SECRET_KEY);
		await pool.query(
			'DELETE FROM usuario_solicitudes WHERE solicitante_id = ? AND receptor_id = ?',
			[id, decoded.id],
		);
		const ioSocket = getSocketInstance();
		const socketId = await getSocketId(id);

		if (socketId) {
			ioSocket.to(socketId).emit('rejectPendingMatch', { id: decoded.id });
		}
		res.status(200).json({
			result: 'ok',
		});
	} catch (error) {
		console.error('Error during registered:', error);
		res.status(500).send('registered failed');
	}
};

export const deleteMatch = async (req, res) => {
	const { id } = req.params;
	const token = req.headers['x-access-token'];

	try {
		const decoded: any = jwt.verify(token, configEnv.SECRET_KEY);

		const [results]: any = await pool.query(
			'SELECT * FROM usuario_contacto WHERE usuario_id = ?',
			[decoded.id],
		);

		if (results.findIndex((c) => c.contacto_id == id) != -1) {
			const [result]: any = await pool.query(
				'DELETE FROM usuario_contacto WHERE usuario_id = ? AND contacto_id = ?',
				[decoded.id, id],
			);
			pool.query(
				'DELETE FROM usuario_contacto WHERE usuario_id = ? AND contacto_id = ?',
				[id, decoded.id],
			);
			const ioSocket = getSocketInstance();
			const socketId = await getSocketId(id);
			if (socketId) {
				ioSocket.to(socketId).emit('deleteMatch', { id: decoded.id });
			}
			// CREATE TABLE usuario_mensajes (
			// 	id INT PRIMARY KEY AUTO_INCREMENT,
			// 	conversacion_id INT,
			// 	remitente_id INT,
			// 	contenido VARCHAR(255),
			// 	fecha_envio VARCHAR(255),
			// 	FOREIGN KEY (conversacion_id) REFERENCES Conversaciones(id),
			// 	FOREIGN KEY (remitente_id) REFERENCES usuario(id)
			//   );

			const [chat]: any = await pool.query(
				'SELECT * FROM conversaciones WHERE (usuario1_id = ? AND usuario2_id = ?) OR (usuario1_id = ? AND usuario2_id = ?)',
				[decoded.id, id, id, decoded.id],
			);

			if (chat.length > 0) {
				await pool.query('DELETE FROM mensajes WHERE conversacion_id = ?', [
					chat[0].id,
				]);
				await pool.query('DELETE FROM conversaciones WHERE id = ?', [
					chat[0].id,
				]);
			}
			res.status(200).json({
				result,
			});
		} else {
			res.status(500).send('User does not exist');
		}
	} catch (error) {
		console.error('Error during registered:', error);
		res.status(500).send('registered failed');
	}
};
