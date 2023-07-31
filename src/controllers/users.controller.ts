import pool from "../database";
import jwt from "jsonwebtoken";
import configEnv from "../config";

export const readUsers = async (req, res) => {
  try {
    let { batchsize, currentbatch } = req.query;
    batchsize === undefined ? (batchsize = 50) : (batchsize = batchsize);
    currentbatch === undefined
      ? (currentbatch = 0)
      : (currentbatch = currentbatch);
    const token = req.headers["x-access-token"];
    const decoded: any = jwt.verify(token, configEnv.SECRET_KEY);
    const [results]: any = await pool.query(
      "SELECT * FROM usuario_contacto WHERE usuario_id = ?",
      [decoded.id]
    );
    const ids = results.map((c) => c.contacto_id);
    ids.push(decoded.id);

    // ids = [...ids, ...solicitudes.map((s) => s.usuario_id)]
    const [rows]: any = await pool.query(
      "SELECT * FROM usuario WHERE id NOT IN (?) LIMIT ? OFFSET ?",
      [ids, Number(batchsize), currentbatch * batchsize]
    );
    const usuarios: any[] = [];
    for (const user of rows) {
      const [lenguajesData]: any = await pool.query(
        "SELECT lenguaje FROM usuario_lenguajes WHERE usuario_id = ?",
        [user.id]
      );

      const [areaExperienciaData]: any = await pool.query(
        "SELECT experiencia FROM usuario_experiencia WHERE usuario_id = ?",
        [user.id]
      );

      const [temasInteresData]: any = await pool.query(
        "SELECT interes FROM usuario_intereses WHERE usuario_id = ?",
        [user.id]
      );

      const [tipoConexionData]: any = await pool.query(
        "SELECT conexion FROM usuario_conexion WHERE usuario_id = ?",
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
    console.log(error);
    res.status(500).send("registered failed");
  }
};

export const readSimilarUsers = async (req, res) => {
  try {
    const user = req.body;

    // Validate input data (you may customize these checks based on your data requirements)
    if (
      !user.id ||
      !user.temasInteres ||
      !user.areaExperiencia ||
      !user.lenguajes ||
      !user.tipoConexion
    ) {
      return res.status(400).json({ error: "Invalid input data" });
    }

    const [results]: any = await pool.query(
      "SELECT DISTINCT contacto_id FROM usuario_contacto WHERE usuario_id = ?",
      [user.id]
    );
    let ids1 = results.map((data) => data.contacto_id);
    if (results.length == 0) ids1 = [];
    ids1.push(user.id);

    console.log(ids1);

    const similarUsersQuery = `
      SELECT DISTINCT u.id, u.nombre, u.email, u.biografia, u.avatar, u.verificado
      FROM usuario AS u
      LEFT JOIN usuario_intereses AS uti ON u.id = uti.usuario_id
      LEFT JOIN usuario_experiencia AS uae ON u.id = uae.usuario_id
      LEFT JOIN usuario_lenguajes AS ul ON u.id = ul.usuario_id
      LEFT JOIN usuario_conexion AS utc ON u.id = utc.usuario_id
      WHERE u.id NOT IN (?) 
      AND (uti.interes IN (?) OR uae.experiencia IN (?) OR ul.lenguaje IN (?) OR utc.conexion IN (?))
    `;

    const values = [
      ids1,
      user.temasInteres,
      user.areaExperiencia,
      user.lenguajes,
      user.tipoConexion,
    ];

    const [similarUsers]: any = await pool.query(similarUsersQuery, values);

    const ids = similarUsers.map((userPending) => userPending.id);

    const pendingRequestsQuery = `
      SELECT u.* FROM usuario_solicitudes us 
      JOIN usuario u ON us.solicitante_id = u.id 
      WHERE us.receptor_id = ? AND us.estado = 'pendiente' AND us.solicitante_id NOT IN (?)
    `;

    const [pendingResults]: any = await pool.query(pendingRequestsQuery, [
      user.id,
      ids,
    ]);
    const [rows]: any = await pool.query(
      "SELECT * FROM usuario WHERE id NOT IN (?) LIMIT ? OFFSET ?",
      [ids, Number(50), 0 * 50]
    );
    let combinedResults;
    if (similarUsers.length == 0) {
      console.log("with similars");
      combinedResults = [...pendingResults, ...rows];
    } else {
      console.log("without similars");
      combinedResults = [...pendingResults, ...similarUsers];
    }

    res.json(combinedResults);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: "Internal server error" });
  }
};

export const readAllUsers = async (req, res) => {
  try {
    const [results]: any = await pool.query("SELECT * FROM usuario");
    res.send(results);
  } catch (error) {
    res.status(500).send(error);
  }
};

export const readUserById = async (req, res) => {
  const { id } = req.params;

  const token = req.headers["x-access-token"];
  const decoded: any = jwt.verify(token, configEnv.SECRET_KEY);
  const [userData]: any = await pool.query(
    "SELECT * FROM usuario WHERE id = ?",
    [id]
  );
  const [lenguajesData]: any = await pool.query(
    "SELECT lenguaje FROM usuario_lenguajes WHERE usuario_id = ?",
    [id]
  );

  const [areaExperienciaData]: any = await pool.query(
    "SELECT experiencia FROM usuario_experiencia WHERE usuario_id = ?",
    [id]
  );

  const [temasInteresData]: any = await pool.query(
    "SELECT interes FROM usuario_intereses WHERE usuario_id = ?",
    [id]
  );

  const [tipoConexionData]: any = await pool.query(
    "SELECT conexion FROM usuario_conexion WHERE usuario_id = ?",
    [id]
  );

  const userDataWithRelations = {
    ...userData[0],
    lenguajes: lenguajesData.map((row) => row.lenguaje),
    areaExperiencia: areaExperienciaData.map((row) => row.experiencia),
    temasInteres: temasInteresData.map((row) => row.interes),
    tipoConexion: tipoConexionData.map((row) => row.conexion),
  };
  res.json(userDataWithRelations);
};

export const searchUser = async (req, res) => {
  let { batchsize, currentbatch, query } = req.query;
  const token = req.headers["x-access-token"];

  try {
    const decoded: any = jwt.verify(token, configEnv.SECRET_KEY);

    const [results]: any = await pool.query(
      "SELECT * FROM usuario_contacto WHERE usuario_id = ?",
      [decoded.id]
    );
    const ids: any[] = [];
    // const ids = results.map((c) => c.contacto_id);
    ids.push(decoded.id);

    // ids = [...ids, ...solicitudes.map((s) => s.usuario_id)];
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
        "SELECT * FROM usuario WHERE (LOWER(nombre) LIKE ?) AND id NOT IN (?) LIMIT ? OFFSET ?",
        [`%${query}%`, ids, Number(batchsize), currentbatch * batchsize]
      );
      const usuarios: any[] = [];
      for (const user of rows) {
        const [lenguajesData]: any = await pool.query(
          "SELECT lenguaje FROM usuario_lenguajes WHERE usuario_id = ?",
          [user.id]
        );

        const [areaExperienciaData]: any = await pool.query(
          "SELECT experiencia FROM usuario_experiencia WHERE usuario_id = ?",
          [user.id]
        );

        const [temasInteresData]: any = await pool.query(
          "SELECT interes FROM usuario_intereses WHERE usuario_id = ?",
          [user.id]
        );

        const [tipoConexionData]: any = await pool.query(
          "SELECT conexion FROM usuario_conexion WHERE usuario_id = ?",
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

export const searchUserByParameters3 = async (req, res) => {
  try {
    const {
      idiomas,
      conexiones,
      experiencia,
      condado,
      ciudad,
      batchsize = 50,
      currentbatch = 0,
    } = req.body;

    let initQuery =
      "SELECT usuario.*, usuario_lenguajes.lenguaje, usuario_conexion.conexion, usuario_experiencia.experiencia FROM usuario JOIN usuario_lenguajes ON usuario.id = usuario_lenguajes.usuario_id JOIN usuario_conexion ON usuario.id = usuario_conexion.usuario_id JOIN usuario_experiencia ON usuario.id = usuario_experiencia.usuario_id";

    const variablesQuery: any = [];

    if (idiomas) {
      initQuery.includes("WHERE")
        ? (initQuery += " AND usuario_lenguajes.lenguaje IN (?)")
        : (initQuery += " WHERE usuario_lenguajes.lenguaje IN (?)");
      variablesQuery.push(idiomas);
    }
    if (conexiones) {
      initQuery.includes("WHERE")
        ? (initQuery += " AND usuario_conexion.conexion IN (?)")
        : (initQuery += " WHERE usuario_conexion.conexion IN (?)");
      variablesQuery.push(conexiones);
    }
    if (experiencia) {
      initQuery.includes("WHERE")
        ? (initQuery += " AND usuario_experiencia.experiencia IN (?)")
        : (initQuery += " WHERE usuario_experiencia.experiencia IN (?)");
      variablesQuery.push(experiencia);
    }
    if (condado) {
      if (ciudad) {
        initQuery.includes("WHERE")
          ? (initQuery += " AND usuario.condado = ? AND usuario.ciudad = ?")
          : (initQuery += " WHERE usuario.condado = ? AND usuario.ciudad = ?");
        variablesQuery.push(condado);
        variablesQuery.push(ciudad);
      } else {
        initQuery.includes("WHERE")
          ? (initQuery += " AND usuario.condado = ?")
          : (initQuery += " WHERE usuario.condado = ?");
        variablesQuery.push(condado);
      }
    }

    const [results]: any = await pool.query(initQuery, variablesQuery);

    const ids = results
      .map((row: any) => row.id)
      .sort((a, b) => a - b)
      .filter((item, idx) => results[idx] != results[idx + 1]);

    const token = req.headers["x-access-token"];
    const decoded: any = jwt.verify(token, configEnv.SECRET_KEY);

    ids.push(decoded.id);
    const [rows]: any = await pool.query(
      `SELECT * FROM usuario WHERE id IN (${ids}) AND id != ${decoded.id}  LIMIT ${batchsize} OFFSET ${currentbatch}`
    );
    const usuarios: any[] = [];
    for (const user of rows) {
      const [lenguajesData]: any = await pool.query(
        "SELECT lenguaje FROM usuario_lenguajes WHERE usuario_id = ?",
        [user.id]
      );

      const [areaExperienciaData]: any = await pool.query(
        "SELECT experiencia FROM usuario_experiencia WHERE usuario_id = ?",
        [user.id]
      );

      const [temasInteresData]: any = await pool.query(
        "SELECT interes FROM usuario_intereses WHERE usuario_id = ?",
        [user.id]
      );

      const [tipoConexionData]: any = await pool.query(
        "SELECT conexion FROM usuario_conexion WHERE usuario_id = ?",
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
  } catch (err) {
    res.status(500).send(err);
  }
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
      await pool.query("DELETE FROM usuario_lenguajes WHERE usuario_id = ?", [
        id,
      ]);
      lenguajes.forEach(async (lenguaje) => {
        await pool.query(
          "INSERT INTO usuario_lenguajes (usuario_id,lenguaje) VALUES (?, ?)",
          [id, lenguaje]
        );
      });
      await pool.query("DELETE FROM usuario_intereses WHERE usuario_id = ?", [
        id,
      ]);
      temasInteres.forEach(async (interes) => {
        await pool.query(
          "INSERT INTO usuario_intereses (usuario_id,interes) VALUES (?, ?)",
          [id, interes]
        );
      });
      await pool.query("DELETE FROM usuario_conexion WHERE usuario_id = ?", [
        id,
      ]);
      tipoConexion.forEach(async (conexion) => {
        await pool.query(
          "INSERT INTO usuario_conexion (usuario_id,conexion) VALUES (?, ?)",
          [id, conexion]
        );
      });
      await pool.query("DELETE FROM usuario_experiencia WHERE usuario_id = ?", [
        id,
      ]);
      areaExperiencia.forEach(async (experiencia) => {
        await pool.query(
          "INSERT INTO usuario_experiencia (usuario_id,experiencia) VALUES (?, ?)",
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
