import configEnv from '../config';
import jwt from 'jsonwebtoken';
import pool from '../database';
import { getSocketId } from '../socketHandlers/user.handlers';
import { getSocketInstance } from '../socket';

export const readNotify = async (req: any, res: any) => {
	const token = req.headers['x-access-token'];

	try {
		const decoded: any = jwt.verify(token, configEnv.SECRET_KEY);

		const [rows]: any[] = await pool.query(
			'SELECT * FROM usuario_notificaciones WHERE usuario_id = ? ORDER BY time DESC',
			[decoded.id],
		);

		res.json(
			rows.map((data) => {
				return { ...data, data: JSON.parse(data.data) };
			}),
		);
	} catch (error) {
		res.status(500).json({ message: 'Error al obtener las notificaciones' });
	}
};
export const createNotify = async (req: any, res: any) => {
	try {
		const { usuario_id, title, message, data, time, type, estado } = req.body;
		console.log('body:::', usuario_id);
		const [results]: any = await pool.query(
			'INSERT INTO usuario_notificaciones (usuario_id,title,message,data,time,type,estado) VALUES (?,?,?,?,?,?,?)',
			[usuario_id, title, message, JSON.stringify(data), time, type, estado],
		);
		res.status(200).json(results);

		const io = getSocketInstance();

		const socketId = await getSocketId(usuario_id);

		if (socketId) io.to(socketId).emit('notify', req.body);
	} catch (error) {
		console.error('Error during registered:', error);

		res.status(500).send('registered failed');
	}
};
export const deleteNotify = async (req: any, res: any) => {
	try {
		const { id } = req.params;
		const [data] = await pool.query(
			'SELECT * FROM usuario_notificaciones WHERE id = ?',
			[id],
		);
		console.log(data);
		const [results]: any = await pool.query(
			'DELETE FROM usuario_notificaciones WHERE id = ?',
			[id],
		);
		res.status(200).json(results);
	} catch (error) {
		res.status(500).json({ message: 'Error al eliminar la notificación' });
	}
};
