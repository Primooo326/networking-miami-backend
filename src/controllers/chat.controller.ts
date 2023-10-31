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
			'SELECT * FROM usuario_mensajes WHERE destinatario_id = ? AND estado = "no_visto"',
			[id],
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
		const { conversacion_id, contenido, remitente_id, destinatario_id } =
			req.body;
		const [result]: any = await pool.query(
			'INSERT INTO usuario_mensajes (conversacion_id, remitente_id,destinatario_id, contenido) VALUES (?, ?, ?, ?)',
			[conversacion_id, remitente_id, destinatario_id, contenido],
		);

		const [data] = await pool.query(
			'SELECT * FROM usuario_mensajes WHERE id = ?',
			[result.insertId],
		);
		console.log(data);

		const ioSocket = getSocketInstance();
		const socketId = await getSocketId(destinatario_id);

		if (socketId) {
			ioSocket.to(socketId).emit('newMessage', data[0]);
		}

		res.json({ conversacion_id, contenido, remitente_id, destinatario_id });
	} catch (error) {
		console.log(error);
		res.status(500).json({ message: 'Error al enviar el mensaje' });
	}
};

export const readChatByIdUser = async (req, res) => {
	try {
		const { idUser, idUser2, batchsize, currentbatch } = req.body;

		const [results] = await pool.query(
			'SELECT * FROM usuario_mensajes  WHERE (remitente_id = ? AND destinatario_id = ?) OR (remitente_id = ? AND destinatario_id = ?) ORDER BY fecha_envio DESC LIMIT ? OFFSET ?',
			[idUser, idUser2, idUser2, idUser, batchsize, currentbatch * batchsize],
		);
		const [conversacion_id] = await pool.query(
			'SELECT `id` FROM usuario_conversaciones WHERE (usuario_id_1 = ? AND usuario_id_2 = ?) OR (usuario_id_1 = ? AND usuario_id_2 = ?)',
			[idUser, idUser2, idUser2, idUser],
		);
		console.log(results);

		res.json({ conversacion_id: conversacion_id[0].id, results });
	} catch (error) {
		console.log(error);
		res.status(500).json({ message: 'Error al obtener los chats' });
	}
};

export const updateMessage = async (req, res) => {
	try {
		const { id } = req.body;

		await pool.query(
			"UPDATE usuario_mensajes SET estado = 'visto' WHERE id = ?",
			[id],
		);

		res.json({ message: 'Mensaje actualizado' });
	} catch (error) {
		console.log(error);
		res.status(500).json({ message: 'Error al obtener los chats' });
	}
};

export const getLastMessageById = async (req, res) => {
	try {
		const { remitente_id, destinatario_id } = req.params;

		console.log(req.params);

		if (!remitente_id || !destinatario_id) {
			res.status(400).json({ message: 'Faltan parametros' });
		}

		const [results] = await pool.query(
			'SELECT * FROM usuario_mensajes WHERE (remitente_id = ? AND destinatario_id = ?) OR (remitente_id = ? AND destinatario_id = ?) ORDER BY fecha_envio DESC LIMIT 1',
			[remitente_id, destinatario_id, destinatario_id, remitente_id],
		);

		res.json(results[0]);
	} catch (error) {
		console.log(error);
		res.status(500).json({ message: 'Error al obtener los chats' });
	}
};
