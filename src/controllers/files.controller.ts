import path from 'path';
import configEnv from '../config';
import fs from 'fs';
import pool from '../database';
import jwt from 'jsonwebtoken';

export const uploadFileAvatar = async (req, res) => {
	const token = req.headers['x-access-token'];
	try {
		const decoded: any = jwt.verify(token, configEnv.SECRET_KEY);
		const [result]: any = await pool.query(
			'UPDATE usuario SET avatar = ? WHERE id = ?',
			[`${configEnv.URL_BACK}api/file/${req.file.filename}`, decoded.id],
		);
		console.log(result);

		res.json({
			path: `${configEnv.URL_BACK}api/file/${req.file.filename}`,
			request: req.file,
		});
	} catch (error) {
		res.status(500).send(error);
	}
};
export const uploadFilePortada = async (req, res) => {
	const token = req.headers['x-access-token'];
	try {
		const decoded: any = jwt.verify(token, configEnv.SECRET_KEY);
		const [result]: any = await pool.query(
			'UPDATE usuario SET fotoPortada = ? WHERE id = ?',
			[`${configEnv.URL_BACK}api/file/${req.file.filename}`, decoded.id],
		);
		console.log(result);

		res.json({
			path: `${configEnv.URL_BACK}api/file/${req.file.filename}`,
			request: req.file,
		});
	} catch (error) {
		res.status(500).send(error);
	}
};

export const getFile = async (req, res) => {
	try {
		fs.readFile(
			path.join(__dirname, `${configEnv.FILES_PATH}/${req.params.filename}`),
			(err, data) => {
				if (err) {
					console.log(err.message);
				}
				res.send(data);
			},
		);
	} catch (error) {
		console.log('error');
		res.send(error);
	}
};
