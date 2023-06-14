import { sendEmail, generateTokenSign, validToken } from "../tools";
import pool from "../database";
import fs from "fs";

export const sendMailVerification = async (req, res) => {
  try {
    const { email } = req.body;
    const [results]: any = await pool.query(
      "SELECT * FROM usuarios WHERE email = ?",
      [email]
    );

    if (results.length === 0) {
      res.status(404).send("Email does not exist");
    } else {
      const token = generateTokenSign({ email }, 86400);
      const mail = await sendEmail(email, "verification", token);
      const myPromise = new Promise((resolve, reject) => {
        // Simulamos una operación asincrónica que tarda 2 segundos en completarse
        setTimeout(() => {
          const success = true;

          if (success) {
            // La operación se completó correctamente
            resolve("Operación exitosa");
          } else {
            // La operación falló
            reject("Error en la operación");
          }
        }, 5000);
      });
      await myPromise
        .then((result) => {
          console.log("Promesa resuelta:", result);
        })
        .catch((error) => {
          console.error("Promesa rechazada:", error);
        });
      res.json({ email, token, mail });
    }
  } catch (error) {
    res.status(500).json(error);
  }
};
export const sendMailInvitation = async (req, res) => {
  try {
    const { user, email } = req.body;
    const mail = await sendEmail(email, "invitation", user);
    res.json({ email, user, mail });
  } catch (error) {
    res.status(500).json(error);
  }
};

export const sendMailResetPassword = async (req, res) => {
  try {
    const { email } = req.body;
    const [results]: any = await pool.query(
      "SELECT * FROM usuarios WHERE email = ?",
      [email]
    );

    if (results.length === 0) {
      res.status(404).send("Email does not exist");
    } else {
      const token = generateTokenSign({ email }, "2h");
      const mail = await sendEmail(email, "passwordReset", token);

      res.json({ email, token, mail });
    }
  } catch (error) {
    res.status(500).send(error);
  }
};

export const sendMailChangeMail = async (req, res) => {
  try {
    const { email, newEmail } = req.body;
    const [results]: any = await pool.query(
      "SELECT * FROM usuarios WHERE email = ?",
      [email]
    );

    if (results.length === 0) {
      res.status(404).send("Email does not exist");
    } else {
      const token = generateTokenSign({ email, newEmail }, 86400);
      const mail = await sendEmail(newEmail, "changeEmail", token);

      res.json({ email, token, mail });
    }
  } catch (error) {
    res.status(500).send(error);
  }
};

export const verifyTokenChangeEmail = async (req, res) => {
  try {
    const { token } = req.body;
    const tokenResponse: any = validToken(token);
    const { email, newEmail } = tokenResponse;
    console.log(email, newEmail);

    const [result]: any = await pool.query(
      "UPDATE usuarios SET email = ? WHERE email = ?",
      [newEmail, email]
    );
    if (result.affectedRows > 0) {
      res.json(result);
    } else {
      res.status(500).send(result);
    }
  } catch (error) {
    res.status(500).send(fs.readFileSync("tokenInvalid.html", "utf8"));
  }
};

export const verifyTokenVerificationEmail = async (req, res) => {
  try {
    const token = req.params.token;
    const tokenResponse: any = validToken(token);
    const { email } = tokenResponse;

    const [result]: any = await pool.query(
      "UPDATE usuarios SET isMailVerified = ? WHERE email = ?",
      [true, email]
    );
    if (result.affectedRows > 0) {
      // res.json(result);
      res.send(fs.readFileSync("mailverifyed.html", "utf8"));
    } else {
      res.status(500).send(result);
    }
  } catch (error) {
    res.status(500).send(fs.readFileSync("tokenInvalid.html", "utf8"));
  }
};
