import pool from '../database';
import { encrypt, compare, generateTokenSign } from '../tools';
import configEnv from '../config';
import jwt from 'jsonwebtoken';
import fs from 'fs';

export const login = async (req, res) => {
	const { email, password } = req.body;

	console.log(req.body);

	try {
		const [rows]: any = await pool.query(
			'SELECT * FROM usuario WHERE email = ?',
			[email],
		);

		if (rows.length > 0) {
			const user = rows[0];

			const esSimilar = await compare(password, user.password);

			if (esSimilar) {
				console.log(user.id);
				const token = generateTokenSign({ id: user.id }, '7d');

				const [userData]: any = await pool.query(
					'SELECT * FROM usuario WHERE id = ?',
					[user.id],
				);

				const [lenguajesData]: any = await pool.query(
					'SELECT lenguaje FROM usuario_lenguajes WHERE usuario_id = ?',
					[user.id],
				);

				const [areaExperienciaData]: any = await pool.query(
					'SELECT experiencia FROM usuario_experiencia WHERE usuario_id = ?',
					[user.id],
				);

				const [temasInteresData]: any = await pool.query(
					'SELECT interes FROM usuario_intereses WHERE usuario_id = ?',
					[user.id],
				);

				const [tipoConexionData]: any = await pool.query(
					'SELECT conexion FROM usuario_conexion WHERE usuario_id = ?',
					[user.id],
				);

				const userDataWithRelations = {
					...userData[0],
					lenguajes: lenguajesData.map((row) => row.lenguaje),
					areaExperiencia: areaExperienciaData.map((row) => row.experiencia),
					temasInteres: temasInteresData.map((row) => row.interes),
					tipoConexion: tipoConexionData.map((row) => row.conexion),
				};

				res.status(200).json({ user: userDataWithRelations, token });
			} else {
				res.status(500).send('Invalid password');
			}
		} else {
			res.status(500).send('User does not exist');
		}
	} catch (error) {
		console.error('Error during login:', error);
		res.status(500).send('Login failed');
	}
};
export const register = async (req, res) => {
	let {
		nombre,
		email,
		password,
		fechaNacimiento,
		condado,
		ciudad,
		genero,
		telefono,
		biografia,
		avatar,
		fotoPortada,
		objetivo,
		fechaIngreso,
		temasInteres,
		areaExperiencia,
		tipoConexion,
		lenguajes,
	} = req.body;
	if (!avatar) {
		avatar =
			'https://ui-avatars.com/api/?background=random&rounded=true&name=' +
			nombre;
	}
	if (!objetivo) {
		objetivo = 'No hay objetivo';
	}
	if (!fotoPortada) {
		fotoPortada = 'https://networking.miami/media/banner/backgroundUser.png';
	}

	try {
		const [results]: any = await pool.query(
			'SELECT * FROM usuario WHERE email = ?',
			[email],
		);
		console.log(fechaIngreso);

		if (results.length > 0) {
			res.status(500).send('User already registered');
		} else {
			const passwordEncrypted = await encrypt(`${password}`);

			const [rows]: any = await pool.query(
				'INSERT INTO usuario (nombre,email,password,fechaNacimiento,verificado,condado,ciudad,genero,telefono,biografia,avatar,fotoPortada,objetivo,fechaIngreso) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)',
				[
					nombre,
					email,
					passwordEncrypted,
					fechaNacimiento,
					false,
					condado,
					ciudad,
					genero,
					telefono,
					biografia,
					avatar,
					fotoPortada,
					objetivo,
					fechaIngreso,
				],
			);
			lenguajes.forEach(async (lenguaje) => {
				await pool.query(
					'INSERT INTO usuario_lenguajes (usuario_id,lenguaje) VALUES (?, ?)',
					[rows.insertId, lenguaje],
				);
			});
			temasInteres.forEach(async (interes) => {
				await pool.query(
					'INSERT INTO usuario_intereses (usuario_id,interes) VALUES (?, ?)',
					[rows.insertId, interes],
				);
			});
			tipoConexion.forEach(async (conexion) => {
				await pool.query(
					'INSERT INTO usuario_conexion (usuario_id,conexion) VALUES (?, ?)',
					[rows.insertId, conexion],
				);
			});
			areaExperiencia.forEach(async (experiencia) => {
				await pool.query(
					'INSERT INTO usuario_experiencia (usuario_id,experiencia) VALUES (?, ?)',
					[rows.insertId, experiencia],
				);
			});

			const token = generateTokenSign({ id: rows.insertId }, '7d');

			res.status(200).json({
				token,
				id: rows.insertId,
				avatar,
				fotoPortada,
			});
		}
	} catch (error) {
		console.error('Error during registered:', error);
		res.status(500).send('registered failed');
	}
};
export const changePassword = async (req, res) => {
	try {
		const { id, passwordNueva, passwordActual } = req.body;
		const [rows]: any = await pool.query('SELECT * FROM usuario WHERE id = ?', [
			id,
		]);
		const user = rows[0];
		const esSimilar = await compare(passwordActual, user.password);

		if (esSimilar) {
			const passwordEncrypted = await encrypt(passwordNueva);

			await pool.query('UPDATE usuario SET password = ? WHERE id = ?', [
				passwordEncrypted,
				id,
			]);
			res.json({ messaje: 'Contraseña actualizada' });
		} else {
			res.status(500).json({ messaje: 'Contraseña incorrecta' });
		}
	} catch (error) {
		res
			.status(500)
			.send(fs.readFileSync('views/tokenInvalid.html.html', 'utf8'));
	}
};
export const loginAdmin = async (req, res) => {
	try {
		const { email, password } = req.body;

		const [rows]: any = await pool.query(
			'SELECT * FROM super_usuario WHERE email = ?',
			[email],
		);

		if (rows.length > 0) {
			const user = rows[0];

			const esSimilar = await compare(password, user.password);

			if (esSimilar) {
				const token = generateTokenSign({ id: user.id }, '7d');
				res.status(200).json({ token, id: user.id });
			} else {
				res.status(500).send('Contraseña incorrecta');
			}
		} else {
			res.status(500).send('Usuario no existe');
		}
	} catch (error) {
		res.status(500).send('Login failed');
	}
};
export const registerAdmin = async (req, res) => {
	try {
		const { email, password } = req.body;

		const [rows]: any = await pool.query(
			'SELECT * FROM super_usuario WHERE email = ?',
			[email],
		);

		if (rows.length > 0) {
			res.status(500).send('User already registered');
		} else {
			const passwordEncrypted = await encrypt(`${password}`);

			const [rows]: any = await pool.query(
				'INSERT INTO super_usuario (email,password) VALUES (?,?)',
				[email, passwordEncrypted],
			);

			const token = generateTokenSign({ id: rows.insertId }, '7d');

			res.status(200).json({
				token,
				id: rows.insertId,
			});
		}
	} catch (error) {
		res.status(500).send('registered failed');
	}
};
