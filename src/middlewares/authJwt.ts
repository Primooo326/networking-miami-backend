import jwt from 'jsonwebtoken';
import configEnv from '../config';

import pool from '../database';

export const verifyToken = async (req, res, next) => {
	const token = req.headers['x-access-token'];
	try {
		if (token) {
			try {
				const decoded: any = jwt.verify(token, configEnv.SECRET_KEY);
				console.log(decoded);
				const [results]: any = await pool.query(
					'SELECT * FROM usuario WHERE id = ?',
					[decoded.id],
				);

				if (results.length === 0) {
					res.status(404).send('User does not exist');
				} else {
					next();
				}
			} catch (error: any) {
				console.log(token);
				res.status(401).send(error.message);
			}
		} else {
			return res.status(404).send('no token available');
		}
	} catch (error: any) {
		console.log(token);
		console.log(error);
		res.status(500).send(error);
	}
};
