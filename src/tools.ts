import bcrypt from "bcryptjs";
import jwt from "jsonwebtoken";
import config from "./config";
import nodemailer from "nodemailer";
import fs from "fs";

export async function encrypt(data: string) {
  const salt = await bcrypt.genSalt(11);
  return await bcrypt.hash(data, salt);
}
export async function compare(data: string, data2: string) {
  return await bcrypt.compare(data, data2);
}
export function generateTokenSign(data: any, expiration: number | string) {
  const token = jwt.sign(data, config.SECRETKEY, {
    expiresIn: expiration,
  });
  return token;
}

export function validToken(token: string) {
  return jwt.verify(token, config.SECRETKEY);
}

export async function sendEmail(
  userEmail: string,
  typeEmail: string,
  data: any
) {
  try {
    const mailBuildData = {
      subject: "Verificacion de correo",
      htmlContent: fs.readFileSync("mailverification.html", "utf8"),
    };
    if (typeEmail === "verification") {
      mailBuildData.subject = "Verificacion de correo";
      mailBuildData.htmlContent = fs
        .readFileSync("mailverification.html", "utf8")
        .replace("{TOKEN}", data);
    } else if (typeEmail === "changeEmail") {
      mailBuildData.subject = "Cambio de correo";
      mailBuildData.htmlContent = fs
        .readFileSync("mailchange.html", "utf8")
        .replace("{TOKEN}", data);
    } else if (typeEmail === "invitation") {
      mailBuildData.subject = "Invitacion";
      mailBuildData.htmlContent = fs
        .readFileSync("mailinvitation.html", "utf8")
        .replace("{USER}", data);
    } else if (typeEmail === "passwordReset") {
      mailBuildData.subject = "Recuperacion de contraseña";
      mailBuildData.htmlContent = fs
        .readFileSync("mailpasswordreset.html", "utf8")
        .replace("{TOKEN}", data);
    } else {
      throw new Error("Email type not found");
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
      subject: mailBuildData.subject,
      html: mailBuildData.htmlContent,
    });

    console.log("Message sent: %s", info.messageId);
    console.log("Preview URL: %s", nodemailer.getTestMessageUrl(info));
    return info.messageId;
  } catch (error) {
    console.log(error);
  }
}
