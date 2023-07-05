import pool from '../database';
import jwt from 'jsonwebtoken';
import configEnv from '../config';
export const createMatch = async (req, res) => {
	const { idToMatch, idUser } = req.body;
	try {
		const [results]: any = await pool.query(
			'SELECT * FROM contacto WHERE usuario_id = ?',
			[idUser],
		);

		if (results.findIndex((c) => c.contacto_id === idToMatch) === -1) {
			const [result]: any = await pool.query(
				'INSERT INTO contacto (usuario_id,contacto_id) VALUES (?, ?)',
				[idUser, idToMatch],
			);
			await pool.query(
				'INSERT INTO contacto (usuario_id,contacto_id) VALUES (?, ?)',
				[idToMatch, idUser],
			);
			res.status(200).json({
				result,
			});
		} else {
			res.status(500).send('User already exist');
		}
	} catch (error) {
		console.error('Error during registered:', error);
		res.status(500).send('registered failed');
	}
};

export const requestMatch = async (req, res) => {
	console.log(req.body);
	const { usuario_request, usuario_id } = req.body;
	try {
		const [results]: any = await pool.query(
			'SELECT * FROM contacto WHERE usuario_id = ?',
			[usuario_id],
		);

		if (results.findIndex((c) => c.contacto_id === usuario_request.id) === -1) {

			const [result]: any = await pool.query(
				'INSERT INTO usuario_solicitudes (usuario_id,contacto_id,tipo,estado) VALUES (?, ?, ?, ?)',
				[usuario_id, usuario_request.id, 'match', 'pendiente'],
			);

			res.status(200).json({
				result,
			});
		} else {
			res.status(500).send('User already exist');
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
			'SELECT * FROM contacto WHERE usuario_id = ?',
			[id],
		);
		console.log(results);
		if(results.length === 0) {return res.status(200).json({result: []})}
		else {

			const ids = results.map((c) => ` id = ${c.contacto_id} `).join(' OR');
			const [result]: any = await pool.query(
				`SELECT * FROM usuario WHERE ${ids}`,
			);
			res.status(200).json({
				result,
			});
		}
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
			'SELECT * FROM contacto WHERE usuario_id = ?',
			[decoded.id],
		);

		if (results.findIndex((c) => c.contacto_id == id) != -1) {
			const [result]: any = await pool.query(
				'DELETE FROM contacto WHERE usuario_id = ? AND contacto_id = ?',
				[decoded.id, id],
			);
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
