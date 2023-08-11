import path from 'path';
import configEnv from '../config';
import fs from 'fs';
import pool from '../database';
import jwt from 'jsonwebtoken';
export const uploadFileAvatar = async (req, res) => {
	const token = req.headers['x-access-token'];
	try {
		const decoded: any = jwt.verify(token, configEnv.SECRET_KEY);
		const [old_file]: any = await pool.query(
			'SELECT avatar FROM usuario WHERE id = ?',
			[decoded.id],
		);

		console.log('oldFile', old_file[0].avatar);
		if (
			old_file[0].avatar !== 'https://networking.miami/media/user-image.png'
		) {
			try {
				fs.unlinkSync(
					path.join(
						__dirname,
						`${configEnv.FILES_PATH}/${old_file[0].avatar.split('/')[5]}`,
					),
				);
			} catch (error) {
				console.log(error);
			}
		}

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

		const [old_file]: any = await pool.query(
			'SELECT fotoPortada FROM usuario WHERE id = ?',
			[decoded.id],
		);

		if (
			old_file[0].fotoPortada !==
			'https://networking.miami/media/banner/backgroundUser.png'
		) {
			try {
				fs.unlinkSync(
					path.join(
						__dirname,
						`${configEnv.FILES_PATH}/${old_file[0].fotoPortada.split('/')[5]}`,
					),
				);
			} catch (error) {
				console.log(error);
			}
		}

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
		console.log(error);
		res.status(500).send(error);
	}
};
export const deleteFileAvatar = async (req, res) => {
	const token = req.headers['x-access-token'];
	try {
		const decoded: any = jwt.verify(token, configEnv.SECRET_KEY);
		const [old_file]: any = await pool.query(
			'SELECT avatar FROM usuario WHERE id = ?',
			[decoded.id],
		);
		if (
			old_file[0].avatar !== 'https://networking.miami/media/user-image.png'
		) {
			try {
				const joinPath = path.join(
					__dirname,
					`${configEnv.FILES_PATH}/${old_file[0].avatar.split('/')[5]}`,
				);
				fs.unlinkSync(joinPath);
			} catch (error) {
				console.log(error);
			}
		}
		const [result]: any = await pool.query(
			'UPDATE usuario SET avatar = ? WHERE id = ?',
			['https://networking.miami/media/user-image.png', decoded.id],
		);

		res.json({
			path: 'https://networking.miami/media/user-image.png',
			request: req.file,
		});
	} catch (error) {
		res.status(500).send(error);
	}
};
export const deleteFilePortada = async (req, res) => {
	const token = req.headers['x-access-token'];
	try {
		const decoded: any = jwt.verify(token, configEnv.SECRET_KEY);
		const [old_file]: any = await pool.query(
			'SELECT fotoPortada FROM usuario WHERE id = ?',
			[decoded.id],
		);
		if (
			old_file[0].fotoPortada !==
			'https://networking.miami/media/banner/backgroundUser.png'
		) {
			try {
				fs.unlinkSync(
					path.join(
						__dirname,
						`${configEnv.FILES_PATH}/${old_file[0].fotoPortada.split('/')[5]}`,
					),
				);
			} catch (error) {
				console.log(error);
			}
		}
		const [result]: any = await pool.query(
			'UPDATE usuario SET fotoPortada = ? WHERE id = ?',
			['https://networking.miami/media/banner/backgroundUser.png', decoded.id],
		);

		res.json({
			path: 'https://networking.miami/media/banner/backgroundUser.png',
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
