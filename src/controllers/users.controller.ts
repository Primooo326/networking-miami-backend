import pool from '../database';

export const readUsers = async (req, res) => {
	const [rows]: any = await pool.query(
		'SELECT * FROM usuarios'
		);
		res.json(rows);
};

export const readUserById = async (req, res) => {
	res.json('Read user by id');
};

export const createUser = async (req, res) => {
	res.json('Create user');
};

export const updateUserById = async (req, res) => {
	res.json('Update user by id');
};

export const deleteUserBtId = async (req, res) => {
	res.json('Delete user by id');
};
