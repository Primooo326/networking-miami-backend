import bcrypt from 'bcryptjs';
import jwt from 'jsonwebtoken';
import configEnv from './config';
import nodemailer from 'nodemailer';
import fs from 'fs';

export async function encrypt(data: string) {
	const salt = await bcrypt.genSalt(11);
	return await bcrypt.hash(data, salt);
}
export async function compare(data: string, data2: string) {
	return await bcrypt.compare(data, data2);
}
export function generateTokenSign(data: any, expiration?: number | string) {
	if (expiration) {
		const token = jwt.sign(data, configEnv.SECRET_KEY, {
			expiresIn: expiration,
		});
		return token;
	} else {
		const token = jwt.sign(data, configEnv.SECRET_KEY);
		return token;
	}
}

export function validToken(token: string) {
	return jwt.verify(token, configEnv.SECRET_KEY);
}

export async function sendEmail(
	userEmail: string,
	typeEmail: string,
	data: any,
) {
	try {
		const mailBuildData = {
			subject: 'Verificación de correo',
			htmlContent: fs.readFileSync(
				`${configEnv.MAIL_PATH}/mailverification.html`,
				'utf8',
			),
		};
		if (typeEmail === 'verification') {
			mailBuildData.subject = 'Verificación de correo';
			mailBuildData.htmlContent = fs
				.readFileSync(`${configEnv.MAIL_PATH}/mailverification.html`, 'utf8')
				.replace('{{TOKEN}}', data)
				.replace('{{URL}}', configEnv.URL_BACK);
		} else if (typeEmail === 'changeEmail') {
			mailBuildData.subject = 'Cambio de correo';
			mailBuildData.htmlContent = fs
				.readFileSync(`${configEnv.MAIL_PATH}/mailchange.html`, 'utf8')
				.replace('{{TOKEN}}', data)
				.replace('{{URL}}', configEnv.URL_BACK);
		} else if (typeEmail === 'invitation') {
			mailBuildData.subject = 'Invitación';
			mailBuildData.htmlContent = fs
				.readFileSync(`${configEnv.MAIL_PATH}/mailinvitation.html`, 'utf8')
				.replace('{{USER}}', data.user)
				.replace('{{NOMBRE}}', data.nombre.split(' ')[0])
				.replace('{{URL}}', configEnv.URL_FRONT);
		} else if (typeEmail === 'passwordReset') {
			mailBuildData.subject = 'Recuperación de contraseña';
			mailBuildData.htmlContent = fs
				.readFileSync(`${configEnv.MAIL_PATH}/mailpasswordreset.html`, 'utf8')
				.replace('{{TOKEN}}', data)
				.replace('{{URL}}', configEnv.URL_BACK);
		} else if (typeEmail === 'newContact') {
			mailBuildData.subject = '¡Tienes una nueva solicitud!';
			mailBuildData.htmlContent = fs
				.readFileSync(`${configEnv.MAIL_PATH}/newContact.html`, 'utf8')
				.replace('{{NOMBRE}}', data.solicitante.nombre)
				.replace('{{BIOGRAFIA}}', data.solicitante.biografia)
				.replace('{{NOTA}}', '¡Hola! quisiera conectar contigo')
				.replace('{{AVATAR}}', data.solicitante.avatar)
				.replace('{{ID}}', data.solicitante.id)
				.replace('{{TOKEN}}', data.token)
				.replaceAll('{{URL}}', configEnv.URL_FRONT)
				.replaceAll('{{URL_BACK}}', configEnv.URL_BACK);
		} else {
			throw new Error('Email type not found');
		}

		const transporter = nodemailer.createTransport({
			host: 'mail.networking.miami',
			port: 465,
			secure: true,
			auth: {
				user: 'noreply@networking.miami',
				pass: 'R8d!{]}oFyzn',
			},
		});

		const info = await transporter.sendMail({
			from: '"Networking Miami" <noreply@networking.miami>',
			to: userEmail,
			subject: mailBuildData.subject,
			html: mailBuildData.htmlContent,
		});

		console.log('Message sent: %s', info.messageId);
		console.log('Preview URL: %s', nodemailer.getTestMessageUrl(info));
		return info.messageId;
	} catch (error) {
		console.log('error::', error);
	}
}
