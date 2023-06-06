import pool from '../database';
import { encrypt, compare, generateTokenSign } from '../tools';
import { IUser } from 'models/user.models';

// export const login = async (req, res) => {
// 	const { email, password } = req.body;

// 	console.log(req.body);

// 	const [rows]: any = await pool.query(
// 		'SELECT * FROM usuarios WHERE email = ?',
// 		[email],
// 	);

// 	if (rows.length > 0) {
// 		const user: IUser = rows[0];

// 		const esSimilar = await compare(password, user.password);

// 		if (esSimilar) {
// 			const token = generateTokenSign(rows.insertId);

// 			res.status(200).json({ user, token });
// 		} else {
// 			res.status(500).json({ error: 'Invalid password' });
// 		}
// 	} else {
// 		res.status(500).json({ error: 'user do not exist' });
// 	}
// };
export const login = async (req, res) => {
	const { email, password } = req.body;

	console.log(req.body);

	try {
		const [rows]: any = await pool.query(
			'SELECT * FROM usuarios WHERE email = ?',
			[email],
		);

		if (rows.length > 0) {
			const user = rows[0];

			const esSimilar = await compare(password, user.password);

			if (esSimilar) {
				const token = generateTokenSign(user.id);

				const [userData]: any = await pool.query(
					'SELECT * FROM usuarios WHERE id = ?',
					[user.id],
				);

				const [languagesData]: any = await pool.query(
					'SELECT language FROM usuarios_languages WHERE usuario_id = ?',
					[user.id],
				);

				const [areaExperienciaData]: any = await pool.query(
					'SELECT area_experiencia FROM usuarios_area_experiencia WHERE usuario_id = ?',
					[user.id],
				);

				const [temasInteresData]: any = await pool.query(
					'SELECT tema_interes FROM usuarios_temas_interes WHERE usuario_id = ?',
					[user.id],
				);

				const [tipoConexionData]: any = await pool.query(
					'SELECT tipo_conexion FROM usuarios_tipo_conexion WHERE usuario_id = ?',
					[user.id],
				);

				const userDataWithRelations = {
					...userData[0],
					languages: languagesData.map((row) => row.language),
					areaExperiencia: areaExperienciaData.map(
						(row) => row.area_experiencia,
					),
					temasInteres: temasInteresData.map((row) => row.tema_interes),
					tipoConexion: tipoConexionData.map((row) => row.tipo_conexion),
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
	const {
		email,
		name,
		password,
		birthdate,
		city,
		gender,
		phone,
		biography,
		objetivo,
		languages,
		temasInteres,
		tipoConexion,
		areaExperiencia,
	} = req.body;

	try {
		const [results]: any = await pool.query(
			'SELECT * FROM usuarios WHERE email = ?',
			[email],
		);

		if (results.length > 0) {
			res.status(500).send('User already registered');
		} else {
			const passwordEncrypted = await encrypt(password);

			const [rows]: any = await pool.query(
				'INSERT INTO usuarios (email,name,password,birthdate,city,gender,phone,biography,objetivo,avatar) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)',
				[
					email,
					name,
					passwordEncrypted,
					birthdate,
					city,
					gender,
					phone,
					biography,
					objetivo,
					null,
				],
			);
			languages.forEach(async (language) => {
				await pool.query(
					'INSERT INTO usuarios_languages (usuario_id,language) VALUES (?, ?)',
					[rows.insertId, language],
				);
			});
			temasInteres.forEach(async (temasIntere) => {
				await pool.query(
					'INSERT INTO usuarios_temas_interes (usuario_id,tema_interes) VALUES (?, ?)',
					[rows.insertId, temasIntere],
				);
			});
			tipoConexion.forEach(async (tipo) => {
				await pool.query(
					'INSERT INTO usuarios_tipo_conexion (usuario_id,tipo_conexion) VALUES (?, ?)',
					[rows.insertId, tipo],
				);
			});
			areaExperiencia.forEach(async (area) => {
				await pool.query(
					'INSERT INTO usuarios_area_experiencia (usuario_id,area_experiencia) VALUES (?, ?)',
					[rows.insertId, area],
				);
			});

			const token = generateTokenSign(rows.insertId);

			res.status(200).json({
				token,
				email,
				name,
				password,
				birthdate,
				city,
				gender,
				phone,
				biography,
				objetivo,
				languages,
				temasInteres,
				tipoConexion,
				areaExperiencia,
			});
		}
	} catch (error) {
		console.error('Error during registered:', error);
		res.status(500).send('registered failed');
	}
};
