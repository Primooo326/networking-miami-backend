import pool from "../database";
import { encrypt, compare, generateTokenSign } from "../tools";

export const readUsers = async (req, res) => {
  const [rows]: any = await pool.query("SELECT * FROM usuario");
  res.json(rows);
};

export const readUserById = async (req, res) => {
  const [rows]: any = await pool.query("SELECT * FROM usuario WHERE id = ?", [
    req.body.id,
  ]);
  res.json(rows);
};

export const createUser = async (req, res) => {
  res.json("Create user");
};

export const updateUserById = async (req, res) => {
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
    id,
  } = req.body;
  try {
    const [results]: any = await pool.query(
      "SELECT * FROM usuario WHERE email = ?",
      [email]
    );
    console.log("email", email);

    if (results.length === 0) {
      res.status(500).send("User does not exist");
    } else {
      const passwordEncrypted = await encrypt(password);

      const [result]: any = await pool.query(
        "UPDATE usuario SET nombre = ?,email = ?,password = ?,fechaNacimiento = ?,verificado = ?,condado = ?,ciudad = ?,genero = ?,telefono = ?,biografia = ?,avatar = ?,fotoPortada = ?,objetivo = ?,fechaIngreso = ? WHERE id = ?",
        [
          nombre,
          email,
          passwordEncrypted,
          fechaNacimiento,
          false,
          condado,
          ciudad,
          genero,
          telefono,
          biografia,
          avatar,
          "https://img.freepik.com/free-photo/glitch-effect-black-background_53876-129025.jpg?w=740&t=st=1686934648~exp=1686935248~hmac=1ce13f8749d5e2fddc16cfa874fa7ac7b6ac58c88576f7e70527eb6bf08249c3",
          objetivo,
          fechaIngreso,
          id,
        ]
      );
      lenguajes.forEach(async (lenguaje) => {
        await pool.query(
          "UPDATE UsuarioLenguajes SET lenguaje = ? WHERE usuario_id = ?",
          [lenguaje, id]
        );
        // UPDATE `usuariolenguajes` SET `usuario_id`='106',`lenguaje`='Inglés' WHERE `usuario_id`='106' and `lenguaje`="Españl";
      });
      temasInteres.forEach(async (interes) => {
        await pool.query(
          "UPDATE UsuarioTemasInteres SET interes = ? WHERE usuario_id = ?",
          [interes, id]
        );
      });
      tipoConexion.forEach(async (conexion) => {
        await pool.query(
          "UPDATE UsuarioTipoConexion SET conexion = ? WHERE usuario_id = ?",
          [conexion, id]
        );
      });
      areaExperiencia.forEach(async (experiencia) => {
        await pool.query(
          "UPDATE UsuarioAreaExperiencia SET experiencia = ? WHERE usuario_id = ?",
          [experiencia, id]
        );
      });

      res.status(200).json({
        result,
      });
    }
  } catch (error) {
    console.error("Error during registered:", error);
    res.status(500).send("registered failed");
  }
};

export const deleteUserBtId = async (req, res) => {
  res.json("Delete user by id");
};
