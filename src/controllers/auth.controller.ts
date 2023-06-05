import pool from '../database';
import { encrypt, compare, generateTokenSign } from '../tools';
import { IUser } from 'models/user.models';

export const login = async (req, res) => {
	const { email, password } = req.body;

	console.log(req.body);

	const [rows]: any = await pool.query('SELECT * FROM users WHERE email = ?', [
		email,
	]);

	if (rows.length > 0) {
		const user: IUser = rows[0];

		const esSimilar = await compare(password, user.password);

		if (esSimilar) {
			const token = generateTokenSign(rows.insertId);

			res.status(200).json({ user, token });
		} else {
			res.status(500).json({ error: 'Invalid password' });
		}
	} else {
		res.status(500).json({ error: 'user do not exist' });
	}
};

export const register = async (req, res) => {
	const {
		email,
		name,
		password,
		birthDate,
		country,
		city,
		gender,
		phone,
		biography,
		avatar,
	} = req.body;

	const [results]: any = await pool.query(
		'SELECT * FROM users WHERE email = ?',
		[email],
	);

	if (results.length > 0) {
		res.status(500).json({ error: 'User already registered' });
	} else {
		const passwordEncrypted = await encrypt(password);

		const [rows]: any = await pool.query(
			'INSERT INTO users (email,name,password,birthDate,country,city,gender,phone,biography,avatar) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)',
			[
				email,
				name,
				passwordEncrypted,
				birthDate,
				country,
				city,
				gender,
				phone,
				biography,
				avatar,
			],
		);

		const token = generateTokenSign(rows.insertId);

		res.status(200).json({ token });
	}
};
