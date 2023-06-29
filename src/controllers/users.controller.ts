import pool from "../database";
import jwt from "jsonwebtoken";
import { configEnv } from "../config";
export const readUsers = async (req, res) => {
  try {
    const token = req.headers["x-access-token"];
    const decoded: any = jwt.verify(token, configEnv.SECRET_KEY);
    const [results]: any = await pool.query(
      "SELECT * FROM contacto WHERE usuario_id = ?",
      [decoded.id]
    );
    const ids = results.map((c) => c.contacto_id);
    ids.push(decoded.id);
    const [rows]: any = await pool.query(
      `SELECT * FROM usuario WHERE id NOT IN (${ids})`
    );
    const usuarios: any[] = [];
    for (const user of rows) {
      const [lenguajesData]: any = await pool.query(
        "SELECT lenguaje FROM usuariolenguajes WHERE usuario_id = ?",
        [user.id]
      );

      const [areaExperienciaData]: any = await pool.query(
        "SELECT experiencia FROM usuarioareaexperiencia WHERE usuario_id = ?",
        [user.id]
      );

      const [temasInteresData]: any = await pool.query(
        "SELECT interes FROM usuariotemasinteres WHERE usuario_id = ?",
        [user.id]
      );

      const [tipoConexionData]: any = await pool.query(
        "SELECT conexion FROM usuariotipoconexion WHERE usuario_id = ?",
        [user.id]
      );

      const userDataWithRelations = {
        ...user,
        lenguajes: lenguajesData.map((row) => row.lenguaje),
        areaExperiencia: areaExperienciaData.map((row) => row.experiencia),
        temasInteres: temasInteresData.map((row) => row.interes),
        tipoConexion: tipoConexionData.map((row) => row.conexion),
      };
      usuarios.push(userDataWithRelations);
    }
    res.json(usuarios);
  } catch (error) {
    res.status(500).send("registered failed");
  }
};

export const readUserById = async (req, res) => {
  const [rows]: any = await pool.query("SELECT * FROM usuario WHERE id = ?", [
    req.body.id,
  ]);
  res.json(rows);
};

export const searchUser = async (req, res) => {
  let { batchsize, currentbatch, query } = req.query;
  const token = req.headers["x-access-token"];

  try {
    const decoded: any = jwt.verify(token, configEnv.SECRET_KEY);

    const [results]: any = await pool.query(
      "SELECT * FROM contacto WHERE usuario_id = ?",
      [decoded.id]
    );
    console.log(decoded.id);
    const ids = results.map((c) => c.contacto_id);
    ids.push(decoded.id);

    batchsize === undefined ? (batchsize = 50) : (batchsize = batchsize);
    currentbatch === undefined
      ? (currentbatch = 0)
      : (currentbatch = currentbatch);
    console.log(batchsize, currentbatch, query);
    if (query === undefined) {
      res.status(500).send("No query");
    } else {
      console.log(ids.toString());
      const [rows]: any = await pool.query(
        "SELECT * FROM usuario WHERE (LOWER(nombre) LIKE ? OR LOWER(email) LIKE ?) AND id NOT IN (?) LIMIT ? OFFSET ?",
        [
          `%${query}%`,
          `%${query}%`,
          ids,
          Number(batchsize),
          currentbatch * batchsize,
        ]
      );
      const usuarios: any[] = [];
      for (const user of rows) {
        const [lenguajesData]: any = await pool.query(
          "SELECT lenguaje FROM usuariolenguajes WHERE usuario_id = ?",
          [user.id]
        );

        const [areaExperienciaData]: any = await pool.query(
          "SELECT experiencia FROM usuarioareaexperiencia WHERE usuario_id = ?",
          [user.id]
        );

        const [temasInteresData]: any = await pool.query(
          "SELECT interes FROM usuariotemasinteres WHERE usuario_id = ?",
          [user.id]
        );

        const [tipoConexionData]: any = await pool.query(
          "SELECT conexion FROM usuariotipoconexion WHERE usuario_id = ?",
          [user.id]
        );

        const userDataWithRelations = {
          ...user,
          lenguajes: lenguajesData.map((row) => row.lenguaje),
          areaExperiencia: areaExperienciaData.map((row) => row.experiencia),
          temasInteres: temasInteresData.map((row) => row.interes),
          tipoConexion: tipoConexionData.map((row) => row.conexion),
        };
        usuarios.push(userDataWithRelations);
      }
      res.json(usuarios);
    }
  } catch (error) {
    res.status(500).send(error);
  }
};

export const searchUserByParameters3 =async (req,res) => {
  

  try {
    let {
      idiomas,
      conexiones,
      experiencia,
      condado,
      ciudad,
      batchsize = 50,
      currentbatch = 0,
    } = req.body;

    let initQuery = "SELECT usuario.*, usuariolenguajes.lenguaje, usuariotipoconexion.conexion, usuarioareaexperiencia.experiencia FROM usuario JOIN usuariolenguajes ON usuario.id = usuariolenguajes.usuario_id JOIN usuariotipoconexion ON usuario.id = usuariotipoconexion.usuario_id JOIN usuarioareaexperiencia ON usuario.id = usuarioareaexperiencia.usuario_id"

    let variablesQuery:any = []

    if(idiomas){
      initQuery.includes("WHERE") ? initQuery += " AND usuariolenguajes.lenguaje IN (?)" : initQuery += " WHERE usuariolenguajes.lenguaje IN (?)"
      variablesQuery.push(idiomas)
    }
    if(conexiones){
      initQuery.includes("WHERE") ? initQuery += " AND usuariotipoconexion.conexion IN (?)" : initQuery += " WHERE usuariotipoconexion.conexion IN (?)"
      variablesQuery.push(conexiones)
    }
    if(experiencia){
      initQuery.includes("WHERE") ? initQuery += " AND usuarioareaexperiencia.experiencia IN (?)" : initQuery += " WHERE usuarioareaexperiencia.experiencia IN (?)"
      variablesQuery.push(experiencia)
    }
    if(condado){
      if(ciudad){
        initQuery.includes("WHERE") ? initQuery += " AND usuario.condado = ? AND usuario.ciudad = ?" : initQuery += " WHERE usuario.condado = ? AND usuario.ciudad = ?"
        variablesQuery.push(condado)
        variablesQuery.push(ciudad)
      }else {
        initQuery.includes("WHERE") ? initQuery += " AND usuario.condado = ?" : initQuery += " WHERE usuario.condado = ?"
        variablesQuery.push(condado)
      }
    }

    let [results]:any = await pool.query(initQuery, variablesQuery)

    let ids = results.map((row:any) => row.id).sort((a,b)=>a-b).filter((item,idx)=>results[idx] != results[idx +1 ] )

    const token = req.headers["x-access-token"];
    const decoded: any = jwt.verify(token, configEnv.SECRET_KEY);

    ids.push(decoded.id);
    const [rows]: any = await pool.query(
      `SELECT * FROM usuario WHERE id IN (${ids}) AND id != ${decoded.id}  LIMIT ${batchsize} OFFSET ${currentbatch}`,
    );
    const usuarios: any[] = [];
    for (const user of rows) {
      const [lenguajesData]: any = await pool.query(
        "SELECT lenguaje FROM usuariolenguajes WHERE usuario_id = ?",
        [user.id]
      );

      const [areaExperienciaData]: any = await pool.query(
        "SELECT experiencia FROM usuarioareaexperiencia WHERE usuario_id = ?",
        [user.id]
      );

      const [temasInteresData]: any = await pool.query(
        "SELECT interes FROM usuariotemasinteres WHERE usuario_id = ?",
        [user.id]
      );

      const [tipoConexionData]: any = await pool.query(
        "SELECT conexion FROM usuariotipoconexion WHERE usuario_id = ?",
        [user.id]
      );

      const userDataWithRelations = {
        ...user,
        lenguajes: lenguajesData.map((row) => row.lenguaje),
        areaExperiencia: areaExperienciaData.map((row) => row.experiencia),
        temasInteres: temasInteresData.map((row) => row.interes),
        tipoConexion: tipoConexionData.map((row) => row.conexion),
      };
      usuarios.push(userDataWithRelations);
    }
    

    res.json(usuarios)


  } catch (err) {
    res.status(500).send(err)
  }

}

export const createUser = async (req, res) => {
  res.json("Create user");
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
      "SELECT * FROM usuario WHERE email = ?",
      [email]
    );
    console.log("email", email);

    if (results.length === 0) {
      res.status(500).send("User does not exist");
    } else {
      // const passwordEncrypted = await encrypt(password);

      const [result]: any = await pool.query(
        "UPDATE usuario SET nombre = ?,email = ?,fechaNacimiento = ?,condado = ?,ciudad = ?,genero = ?,telefono = ?,biografia = ?,avatar = ?,fotoPortada = ?,objetivo = ?,fechaIngreso = ? WHERE id = ?",
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
          "https://img.freepik.com/free-photo/glitch-effect-black-background_53876-129025.jpg?w=740&t=st=1686934648~exp=1686935248~hmac=1ce13f8749d5e2fddc16cfa874fa7ac7b6ac58c88576f7e70527eb6bf08249c3",
          objetivo,
          fechaIngreso,
          id,
        ]
      );
      await pool.query("DELETE FROM usuariolenguajes WHERE usuario_id = ?", [
        id,
      ]);
      lenguajes.forEach(async (lenguaje) => {
        await pool.query(
          "INSERT INTO usuariolenguajes (usuario_id,lenguaje) VALUES (?, ?)",
          [id, lenguaje]
        );
      });
      await pool.query("DELETE FROM usuariotemasinteres WHERE usuario_id = ?", [
        id,
      ]);
      temasInteres.forEach(async (interes) => {
        await pool.query(
          "INSERT INTO usuariotemasinteres (usuario_id,interes) VALUES (?, ?)",
          [id, interes]
        );
      });
      await pool.query("DELETE FROM usuariotipoconexion WHERE usuario_id = ?", [
        id,
      ]);
      tipoConexion.forEach(async (conexion) => {
        await pool.query(
          "INSERT INTO usuariotipoconexion (usuario_id,conexion) VALUES (?, ?)",
          [id, conexion]
        );
      });
      await pool.query(
        "DELETE FROM usuarioareaexperiencia WHERE usuario_id = ?",
        [id]
      );
      areaExperiencia.forEach(async (experiencia) => {
        await pool.query(
          "INSERT INTO usuarioareaexperiencia (usuario_id,experiencia) VALUES (?, ?)",
          [id, experiencia]
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

export const deleteUserById = async (req, res) => {
  res.json("Delete user by id");
};
