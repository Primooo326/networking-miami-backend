import pool from "../database";
import { encrypt, compare, generateTokenSign } from "../tools";
import config from "../config";
import jwt from "jsonwebtoken";
import fs from "fs";

export const login = async (req, res) => {
  const { email, password } = req.body;

  console.log(req.body);

  try {
    const [rows]: any = await pool.query(
      "SELECT * FROM usuario WHERE email = ?",
      [email]
    );

    if (rows.length > 0) {
      const user = rows[0];

      const esSimilar = await compare(password, user.password);

      if (esSimilar) {
        const token = generateTokenSign({ id: user.id }, 86400);

        const [userData]: any = await pool.query(
          "SELECT * FROM usuario WHERE id = ?",
          [user.id]
        );

        const [languagesData]: any = await pool.query(
          "SELECT language FROM UsuarioLenguajes WHERE usuario_id = ?",
          [user.id]
        );

        const [areaExperienciaData]: any = await pool.query(
          "SELECT area_experiencia FROM UsuarioAreaExperiencia WHERE usuario_id = ?",
          [user.id]
        );

        const [temasInteresData]: any = await pool.query(
          "SELECT tema_interes FROM UsuarioTemasInteres WHERE usuario_id = ?",
          [user.id]
        );

        const [tipoConexionData]: any = await pool.query(
          "SELECT tipo_conexion FROM UsuarioTipoConeccion WHERE usuario_id = ?",
          [user.id]
        );

        const userDataWithRelations = {
          ...userData[0],
          lenguajes: languagesData.map((row) => row.lenguaje),
          areaExperiencia: areaExperienciaData.map((row) => row.experiencia),
          temasInteres: temasInteresData.map((row) => row.interes),
          tipoConexion: tipoConexionData.map((row) => row.conexion),
        };

        res.status(200).json({ user: userDataWithRelations, token });
      } else {
        res.status(500).send("Invalid password");
      }
    } else {
      res.status(500).send("User does not exist");
    }
  } catch (error) {
    console.error("Error during login:", error);
    res.status(500).send("Login failed");
  }
};

export const register = async (req, res) => {
  const {
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
  try {
    const [results]: any = await pool.query(
      "SELECT * FROM usuario WHERE email = ?",
      [email]
    );

    if (results.length > 0) {
      res.status(500).send("User already registered");
    } else {
      const passwordEncrypted = await encrypt(password);

      const [rows]: any = await pool.query(
        "INSERT INTO usuario (nombre,email,password,fechaNacimiento,verificado,condado,ciudad,genero,telefono,biografia,avatar,fotoPortada,objetivo,fechaIngreso) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)",
        [
          nombre,
          email,
          passwordEncrypted,
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
        ]
      );
      lenguajes.forEach(async (lenguaje) => {
        await pool.query(
          "INSERT INTO UsuarioLenguajes (usuario_id,lenguaje) VALUES (?, ?)",
          [rows.insertId, lenguaje]
        );
      });
      temasInteres.forEach(async (interes) => {
        await pool.query(
          "INSERT INTO UsuarioTemasInteres (usuario_id,interes) VALUES (?, ?)",
          [rows.insertId, interes]
        );
      });
      tipoConexion.forEach(async (conexion) => {
        await pool.query(
          "INSERT INTO UsuarioTipoConexion (usuario_id,conexion) VALUES (?, ?)",
          [rows.insertId, conexion]
        );
      });
      areaExperiencia.forEach(async (experiencia) => {
        await pool.query(
          "INSERT INTO UsuarioAreaExperiencia (usuario_id,experiencia) VALUES (?, ?)",
          [rows.insertId, experiencia]
        );
      });

      const token = generateTokenSign({ id: rows.insertId }, 86400);

      res.status(200).json({
        token,
        id: rows.insertId,
        nombre,
        email,
        passwordEncrypted,
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
      });
    }
  } catch (error) {
    console.error("Error during registered:", error);
    res.status(500).send("registered failed");
  }
};
export const resetPassword = async (req, res) => {
  try {
    const { token, password } = req.body;
    const { email }: any = jwt.verify(token, config.SECRETKEY);
    console.log(email, password);

    const passwordEncrypted = await encrypt(password);

    const [result]: any = await pool.query(
      "UPDATE usuario SET password = ? WHERE email = ?",
      [passwordEncrypted, email]
    );
    if (result.affectedRows > 0) {
      res.send(fs.readFileSync("resetPasswordSuccess.html", "utf8"));
    } else {
      res.status(500).send(result);
    }
  } catch (error) {
    res.status(500).send(error);
  }
};
