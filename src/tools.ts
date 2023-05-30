import bcrypt from 'bcryptjs';
import jwt from 'jsonwebtoken';
import config from './config';

export async function encrypt(data: string) {
	const salt = await bcrypt.genSalt(11);
	return await bcrypt.hash(data, salt);
}
export async function compare(data: string, data2: string) {
	return await bcrypt.compare(data, data2);
}
export function generateTokenSign(id_user: string) {
	const token = jwt.sign({ id: id_user }, config.SECRETKEY, {
		expiresIn: 86400, // 24 hours
	});
	console.log(token);
	return token;
}
