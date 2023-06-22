import pool from '../database';
import jwt from 'jsonwebtoken';
import config from '../config';
export const readUsers = async (req, res) => {
	const token = req.headers['x-access-token'];
	try {
		const decoded: any = jwt.verify(token, config.SECRETKEY);
		const [results]: any = await pool.query(
			'SELECT * FROM contacto WHERE usuario_id = ?',
			[decoded.id],
		);
		const ids = results.map((c) => c.contacto_id);
		ids.push(decoded.id);
		const [rows]: any = await pool.query(
			`SELECT * FROM usuario WHERE id NOT IN (${ids}) LIMIT 50`,
		);
		res.json(rows);
	} catch (error) {
		res.status(500).send('registered failed');
	}
};

export const readUserById = async (req, res) => {
	const [rows]: any = await pool.query('SELECT * FROM usuario WHERE id = ?', [
		req.body.id,
	]);
	res.json(rows);
};

export const searchUser = async (req, res) => {
	let {batchsize,currentbatch,query} = req.query;
	const token = req.headers['x-access-token'];


try {
	const decoded: any = jwt.verify(token, config.SECRETKEY);

	const [results]: any = await pool.query(
		'SELECT * FROM contacto WHERE usuario_id = ?',
		[decoded.id],
	);
	const ids = results.map((c) => c.contacto_id);
	ids.push(decoded.id);
	
	batchsize === undefined ? batchsize = 50 : batchsize = batchsize;
	currentbatch === undefined ? currentbatch = 0 : currentbatch = currentbatch;
	console.log(batchsize,currentbatch,query);
	if(query === undefined){
		res.status(500).send('No query');
	}else {
		console.log(ids.toString());
		const [rows] = await pool.query("SELECT * FROM usuario WHERE (LOWER(nombre) LIKE ? OR LOWER(email) LIKE ?) AND id NOT IN (?) LIMIT ? OFFSET ?",[`%${query}%`,`%${query}%`,ids, Number(batchsize), currentbatch * batchsize]);
		res.send(rows)
	}
} catch (error) {
	res.status(500).send(error);
}



}

export const createUser = async (req, res) => {
	res.json('Create user');
};

export const updateUserById = async (req, res) => {
	const {
		nombre,
		email,
		// password,
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
		id,
	} = req.body;
	try {
		const [results]: any = await pool.query(
			'SELECT * FROM usuario WHERE email = ?',
			[email],
		);
		console.log('email', email);

		if (results.length === 0) {
			res.status(500).send('User does not exist');
		} else {
			// const passwordEncrypted = await encrypt(password);

			const [result]: any = await pool.query(
				'UPDATE usuario SET nombre = ?,email = ?,fechaNacimiento = ?,condado = ?,ciudad = ?,genero = ?,telefono = ?,biografia = ?,avatar = ?,fotoPortada = ?,objetivo = ?,fechaIngreso = ? WHERE id = ?',
				[
					nombre,
					email,
					// passwordEncrypted,
					fechaNacimiento,
					condado,
					ciudad,
					genero,
					telefono,
					biografia,
					avatar,
					'https://img.freepik.com/free-photo/glitch-effect-black-background_53876-129025.jpg?w=740&t=st=1686934648~exp=1686935248~hmac=1ce13f8749d5e2fddc16cfa874fa7ac7b6ac58c88576f7e70527eb6bf08249c3',
					objetivo,
					fechaIngreso,
					id,
				],
			);
			await pool.query('DELETE FROM UsuarioLenguajes WHERE usuario_id = ?', [
				id,
			]);
			lenguajes.forEach(async (lenguaje) => {
				await pool.query(
					'INSERT INTO UsuarioLenguajes (usuario_id,lenguaje) VALUES (?, ?)',
					[id, lenguaje],
				);
			});
			await pool.query('DELETE FROM UsuarioTemasInteres WHERE usuario_id = ?', [
				id,
			]);
			temasInteres.forEach(async (interes) => {
				await pool.query(
					'INSERT INTO UsuarioTemasInteres (usuario_id,interes) VALUES (?, ?)',
					[id, interes],
				);
			});
			await pool.query('DELETE FROM UsuarioTipoConexion WHERE usuario_id = ?', [
				id,
			]);
			tipoConexion.forEach(async (conexion) => {
				await pool.query(
					'INSERT INTO UsuarioTipoConexion (usuario_id,conexion) VALUES (?, ?)',
					[id, conexion],
				);
			});
			await pool.query(
				'DELETE FROM UsuarioAreaExperiencia WHERE usuario_id = ?',
				[id],
			);
			areaExperiencia.forEach(async (experiencia) => {
				await pool.query(
					'INSERT INTO UsuarioAreaExperiencia (usuario_id,experiencia) VALUES (?, ?)',
					[id, experiencia],
				);
			});

			res.status(200).json({
				result,
			});
		}
	} catch (error) {
		console.error('Error during registered:', error);
		res.status(500).send('registered failed');
	}
};

export const deleteUserById = async (req, res) => {
	res.json('Delete user by id');
};
