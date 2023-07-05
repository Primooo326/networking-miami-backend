import pool from '../database';
import { encrypt, compare, generateTokenSign } from '../tools';
import { avatars } from '../datasets';
import configEnv  from '../config';
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
				const token = generateTokenSign({ id: user.id }, 86400);

				const [userData]: any = await pool.query(
					'SELECT * FROM usuario WHERE id = ?',
					[user.id],
				);

				const [lenguajesData]: any = await pool.query(
					'SELECT lenguaje FROM usuariolenguajes WHERE usuario_id = ?',
					[user.id],
				);

				const [areaExperienciaData]: any = await pool.query(
					'SELECT experiencia FROM usuarioareaexperiencia WHERE usuario_id = ?',
					[user.id],
				);

				const [temasInteresData]: any = await pool.query(
					'SELECT interes FROM usuariotemasinteres WHERE usuario_id = ?',
					[user.id],
				);

				const [tipoConexionData]: any = await pool.query(
					'SELECT conexion FROM usuariotipoconexion WHERE usuario_id = ?',
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
		verificado,
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
		avatar = avatars[Math.floor(Math.random() * avatars.length)];
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
					'https://img.freepik.com/free-photo/glitch-effect-black-background_53876-129025.jpg?w=740&t=st=1686934648~exp=1686935248~hmac=1ce13f8749d5e2fddc16cfa874fa7ac7b6ac58c88576f7e70527eb6bf08249c3',
					objetivo,
					fechaIngreso,
				],
			);
			lenguajes.forEach(async (lenguaje) => {
				await pool.query(
					'INSERT INTO usuariolenguajes (usuario_id,lenguaje) VALUES (?, ?)',
					[rows.insertId, lenguaje],
				);
			});
			temasInteres.forEach(async (interes) => {
				await pool.query(
					'INSERT INTO usuariotemasinteres (usuario_id,interes) VALUES (?, ?)',
					[rows.insertId, interes],
				);
			});
			tipoConexion.forEach(async (conexion) => {
				await pool.query(
					'INSERT INTO usuariotipoconexion (usuario_id,conexion) VALUES (?, ?)',
					[rows.insertId, conexion],
				);
			});
			areaExperiencia.forEach(async (experiencia) => {
				await pool.query(
					'INSERT INTO usuarioareaexperiencia (usuario_id,experiencia) VALUES (?, ?)',
					[rows.insertId, experiencia],
				);
			});

			const token = generateTokenSign({ id: rows.insertId }, 86400);

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
export const resetPassword = async (req, res) => {
	try {
		const { token, password } = req.body;
		const { email }: any = jwt.verify(token, configEnv.SECRET_KEY);
		console.log(email, password);

		const passwordEncrypted = await encrypt(password);

		const [result]: any = await pool.query(
			'UPDATE usuario SET password = ? WHERE email = ?',
			[passwordEncrypted, email],
		);
		if (result.affectedRows > 0) {
			res.send(fs.readFileSync('views/resetPasswordSuccess.html', 'utf8').replace("{{URL}}",configEnv.URL_FRONT));
		} else {
			res.send(fs.readFileSync('views/resetPasswordSuccess.html', 'utf8').replace("{{URL}}",configEnv.URL_FRONT));
		}
	} catch (error) {
		res.status(500).send(fs.readFileSync('views/tokenInvalid.html.html', 'utf8'));
	}
};
