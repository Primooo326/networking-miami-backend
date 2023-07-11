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
		const fecha_envio = new Date().toISOString();
		const { conversacion_id, contenido, remitente_id, destinatario_id } =
			req.body;
		const [results] = await pool.query(
			'INSERT INTO usuario_mensajes (conversacion_id, remitente_id,destinatario_id, contenido, fecha_envio) VALUES (?, ?, ?, ?, ?)',
			[conversacion_id, remitente_id, destinatario_id, contenido, fecha_envio],
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

		res.json(results);
	} catch (error) {
		console.log(error);
		res.status(500).json({ message: 'Error al enviar el mensaje' });
	}
};
