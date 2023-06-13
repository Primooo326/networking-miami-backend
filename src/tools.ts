import bcrypt from 'bcryptjs';
import jwt from 'jsonwebtoken';
import config from './config';
import nodemailer from "nodemailer"
import fs from "fs"
import { TypeMail } from 'models/sys.models';

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
export async function sendEmail(userEmail:string, type:TypeMail){


	const data = {
		subject: "Verificacion de correo",
		htmlContent :fs.readFileSync("mailverification.html", "utf8")
	}


	if(type === TypeMail.verification){
		data.subject = "Verificacion de correo"
		data.htmlContent = fs.readFileSync("mailverification.html", "utf8")
	}else if(type === TypeMail.changeEmail){
		data.subject = "Cambio de correo"
		data.htmlContent = fs.readFileSync("mailchange.html", "utf8")
	}else if(type === TypeMail.invitation){
		data.subject = "Invitacion"
		data.htmlContent = fs.readFileSync("mailinvitation.html", "utf8")

	}else if( type === TypeMail.passwordReset ){
		data.subject = "Recuperacion de contraseña"
		data.htmlContent = fs.readFileSync("mailpasswordreset.html", "utf8")
	}else{
		 throw new Error("type mail not found");
		
	}

	
    const transporter = nodemailer.createTransport({
        host: "mail.networking.miami",
        port: 465,
        secure: true,
        auth: {
            user: "_mainaccount@networking.miami",
            pass: "Miami2023$",
        },
    });


    const info = await transporter.sendMail({
        from: '"Networking miami" <_mainaccount@networking.miami>',
        to: userEmail,
		subject: data.subject,
		html: data.htmlContent
    });


    console.log("Message sent: %s", info.messageId);
    console.log("Preview URL: %s", nodemailer.getTestMessageUrl(info));

	
}