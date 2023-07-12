import pool from '../database';
import jwt from 'jsonwebtoken';
import configEnv from '../config';
import { getSocketId } from '../socketHandlers/user.handlers';
import { getSocketInstance } from '../socket';

export const readChats = async (req, res) => {
	try {
		const token = req.headers['x-access-token'];
		const decoded: any = jwt.verify(token, configEnv.SECRET_KEY);
		const { id } = decoded;
		const [results] = await pool.query(
			'SELECT * FROM Conversaciones WHERE usuario_id_1 = ? OR usuario_id_2 = ?',
			[id, id],
		);
		res.json(results);
	} catch (error) {
		console.log(error);
		res.status(500).json({ message: 'Error al obtener los chats' });
	}
};

export const readMessages = async (req, res) => {
	try {
		let { batchsize, currentbatch, id } = req.body;
		batchsize === undefined ? (batchsize = 50) : (batchsize = batchsize);
		currentbatch === undefined
			? (currentbatch = 0)
			: (currentbatch = currentbatch);

		const [results] = await pool.query(
			'SELECT * FROM usuario_mensajes WHERE conversacion_id = ? ORDER BY fecha_envio DESC LIMIT ? OFFSET ?',
			[id, batchsize, currentbatch * batchsize],
		);

		res.json(results);
	} catch (error) {
		console.log(error);
		res.status(500).json({ message: 'Error al obtener los mensajes' });
	}
};

export const sendMessage = async (req, res) => {
	try {
		// const fecha_envio = Date.now();
		//fecha de envio a numero 

		const { conversacion_id, contenido, remitente_id, destinatario_id } =
			req.body;
		await pool.query(
			'INSERT INTO usuario_mensajes (conversacion_id, remitente_id,destinatario_id, contenido) VALUES (?, ?, ?, ?)',
			[conversacion_id, remitente_id, destinatario_id, contenido],
		);
		const ioSocket = getSocketInstance();
		const socketId = await getSocketId(destinatario_id);

		if (socketId) {
			ioSocket.to(socketId).emit('newMessage', {
				conversacion_id,
				contenido,
				remitente_id,
				destinatario_id,
			});
		}

		res.json({conversacion_id, contenido, remitente_id, destinatario_id});
	} catch (error) {
		console.log(error);
		res.status(500).json({ message: 'Error al enviar el mensaje' });
	}
};

export const readChatByIdUser = async (req, res) => {

	try {
		const { idUser, idUser2, batchsize, currentbatch } = req.body;

		// const [results] = await pool.query(
		// 	'SELECT * FROM usuario_mensajes JOIN Conversaciones ON conversacion_id = Conversaciones.id WHERE (usuario_id_1 = ? AND usuario_id_2 = ?) OR (usuario_id_1 = ? AND usuario_id_2 = ?) ORDER BY fecha_envio ASC LIMIT ? OFFSET ?',
		// 	[idUser, idUser2, idUser2, idUser,batchsize, currentbatch * batchsize],
		//   );
		const [results] = await pool.query(
			'SELECT * FROM usuario_mensajes JOIN Conversaciones ON conversacion_id = Conversaciones.id WHERE (usuario_id_1 = ? AND usuario_id_2 = ?) OR (usuario_id_1 = ? AND usuario_id_2 = ?) ORDER BY fecha_envio ASC',
			[idUser, idUser2, idUser2, idUser,batchsize],
		  );
		// const [results] = await pool.query(
		// 	'SELECT * FROM usuario_mensajes WHERE conversacion_id = ? ORDER BY fecha_envio DESC LIMIT ? OFFSET ?',
		// 	[idUser, batchsize, currentbatch * batchsize],
		// );
		const [conversacion_id] = await pool.query(
			'SELECT `id` FROM Conversaciones WHERE (usuario_id_1 = ? AND usuario_id_2 = ?) OR (usuario_id_1 = ? AND usuario_id_2 = ?)',
			[idUser, idUser2, idUser2, idUser],
		)
		  
		  
		res.json({conversacion_id:conversacion_id[0].id, results});
	} catch (error) {
		console.log(error);
		res.status(500).json({ message: 'Error al obtener los chats' });
	}
}