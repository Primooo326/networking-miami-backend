import pool from "../database";
import jwt from "jsonwebtoken";
import configEnv from "../config";
import { getSocketId } from "../socketHandlers/user.handlers";
import { getSocketInstance } from "../socket";

export const createMatch = async (req, res) => {
  const { idToMatch, idUser } = req.body;
  try {
    const [results]: any = await pool.query(
      "SELECT * FROM usuario_contacto WHERE usuario_id = ? AND contacto_id = ?",
      [idUser, idToMatch]
    );

    if (results.length === 0) {
      const [result]: any = await pool.query(
        "INSERT INTO usuario_contacto (usuario_id,contacto_id) VALUES (?, ?)",
        [idUser, idToMatch]
      );
      await pool.query(
        "INSERT INTO usuario_contacto (usuario_id,contacto_id) VALUES (?, ?)",
        [idToMatch, idUser]
      );
      await pool.query(
        "DELETE FROM usuario_solicitudes WHERE solicitante_id = ? AND receptor_id = ?",
        [idToMatch, idUser]
      );
      await pool.query(
        "DELETE FROM usuario_notificaciones WHERE usuario_id = ?",
        [idToMatch]
      );
      const socketId = await getSocketId(idToMatch);

      await pool.query(
        "INSERT INTO usuario_conversaciones (nombre, usuario_id_1, usuario_id_2) VALUES (?, ?, ?)",
        ["chat", idUser, idToMatch]
      );

      if (socketId) {
        const [userData]: any = await pool.query(
          "SELECT * FROM usuario WHERE id = ?",
          [idUser]
        );

        const [lenguajesData]: any = await pool.query(
          "SELECT lenguaje FROM usuario_lenguajes WHERE usuario_id = ?",
          [idUser]
        );

        const [areaExperienciaData]: any = await pool.query(
          "SELECT experiencia FROM usuario_experiencia WHERE usuario_id = ?",
          [idUser]
        );

        const [temasInteresData]: any = await pool.query(
          "SELECT interes FROM usuario_intereses WHERE usuario_id = ?",
          [idUser]
        );

        const [tipoConexionData]: any = await pool.query(
          "SELECT conexion FROM usuario_conexion WHERE usuario_id = ?",
          [idUser]
        );

        const userDataWithRelations = {
          ...userData[0],
          lenguajes: lenguajesData.map((row) => row.lenguaje),
          areaExperiencia: areaExperienciaData.map((row) => row.experiencia),
          fijado: 0,
          temasInteres: temasInteresData.map((row) => row.interes),
          tipoConexion: tipoConexionData.map((row) => row.conexion),
        };

        const ioSocket = getSocketInstance();
        ioSocket.to(socketId).emit("newMatch", userDataWithRelations);
      }
      res.status(200).json({
        result,
      });
    } else {
      res.status(500).send("Match ya existe");
    }
  } catch (error) {
    console.error("Error during registered:", error);
    res.status(500).json();
  }
};

export const requestMatch = async (req, res, next) => {
  console.log(req.body);
  const { usuario_request, usuario_id } = req.body;

  try {
    await pool.query(
      "SELECT * FROM usuario_solicitudes WHERE solicitante_id = ? AND receptor_id = ?",
      [usuario_request.id, usuario_id]
    );

    if (true) {
      await pool.query(
        "INSERT INTO usuario_solicitudes (solicitante_id,receptor_id,fecha_solicitud,estado) VALUES (?, ?, ?, ?)",
        [usuario_request.id, usuario_id, new Date().toISOString(), "pendiente"]
      );

      // io.emit('matchRequest', req.body);

      const datos = {
        usuario_id: usuario_id,
        title: "¡Nueva solicitud!",
        message: `${usuario_request.nombre} te ha enviado una solicitud.`,
        data: usuario_request,
        time: new Date().toISOString(),
        type: "match",
        estado: "no leido",
      };
      req.body = datos;
      next();
    } else {
      res.status(500).send("Solicitud ya enviada");
    }
  } catch (error) {
    console.error("Error during registered:", error);
    res.status(500).send("registered failed");
  }
};

export const readPendingMatches = async (req, res) => {
  try {
    const token = req.headers["x-access-token"];

    const decoded: any = jwt.verify(token, configEnv.SECRET_KEY);

    const [results]: any = await pool.query(
      "SELECT u.* FROM usuario_solicitudes us JOIN usuario u ON us.solicitante_id = u.id WHERE us.receptor_id = ? AND us.estado = ?",
      [decoded.id, "pendiente"]
    );

    if (results.length === 0) {
      return res.status(200).json([]);
    } else {
      res.status(200).json(results);
    }
  } catch (error) {
    console.error("Error during readPendingMatches:", error);
    res.status(500).send("Failed to fetch pending matches");
  }
};

export const readMyRequest = async (req, res) => {
  try {
    const token = req.headers["x-access-token"];

    const decoded: any = jwt.verify(token, configEnv.SECRET_KEY);
    console.log("id:::", decoded.id);

    const [results]: any = await pool.query(
      "SELECT * FROM usuario_solicitudes WHERE solicitante_id = ? AND estado = ?",
      [decoded.id, "pendiente"]
    );
    console.log(results);
    if (results.length === 0) {
      return res.status(200).json([]);
    } else {
      const ids = results.map((c) => ` id = ${c.receptor_id} `).join(" OR");
      const [result]: any = await pool.query(
        `SELECT * FROM usuario WHERE ${ids}`
      );
      res.status(200).json(result);
    }
  } catch (error) {
    console.error("Error during registered:", error);
    res.status(500).send("registered failed");
  }
};

export const readMatch = async (req, res) => {
  const { id } = req.params;
  console.log(id);
  try {
    const [results]: any = await pool.query(
      "SELECT * FROM usuario_contacto WHERE usuario_id = ?",
      [id]
    );
    console.log(results);
    if (results.length === 0) {
      return res.status(200).json([]);
    } else {
      const ids = results.map((c) => ` id = ${c.contacto_id} `).join(" OR");
      const [result]: any = await pool.query(
        `SELECT * FROM usuario WHERE ${ids}`
      );
      const usuarios: any[] = [];
      for (const user of result) {
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
          ...user,
          lenguajes: lenguajesData.map((row) => row.lenguaje),
          areaExperiencia: areaExperienciaData.map((row) => row.experiencia),
          temasInteres: temasInteresData.map((row) => row.interes),
          tipoConexion: tipoConexionData.map((row) => row.conexion),
          fijado: results.find((c) => c.contacto_id == user.id).fijado,
          contactoDb_id: results.find((c) => c.contacto_id == user.id).id,
        };
        usuarios.push(userDataWithRelations);
      }
      console.log("object", usuarios);

      res.json(usuarios);
    }
  } catch (error) {
    console.error("Error during registered:", error);
    res.status(500).send("registered failed");
  }
};

export const updateMatch = async (req, res) => {
  const { fijado, contactoDb_id } = req.body;
  try {
    const [result]: any = await pool.query(
      "UPDATE usuario_contacto SET fijado = ? WHERE id = ?",
      [fijado, contactoDb_id]
    );
    res.status(200).json({
      result,
    });
  } catch (error) {
    console.error("Error during registered:", error);
    res.status(500).send("registered failed");
  }
};

export const deleteRequestMatch = async (req, res) => {
  const { id } = req.params;
  const token = req.headers["x-access-token"];
  try {
    const decoded: any = jwt.verify(token, configEnv.SECRET_KEY);
    await pool.query(
      "DELETE FROM usuario_solicitudes WHERE solicitante_id = ? AND receptor_id = ?",
      [decoded.id, id]
    );

    const ioSocket = getSocketInstance();
    const socketId = await getSocketId(id);

    if (socketId) {
      ioSocket.to(socketId).emit("deleteRequestMatch", { id: decoded.id });
    }

    res.status(200).json({
      result: "ok",
    });
  } catch (error) {
    console.error("Error during registered:", error);
    res.status(500).send("registered failed");
  }
};

export const rejectPendingMatch = async (req, res) => {
  const { id } = req.params;
  const token = req.headers["x-access-token"];
  try {
    const decoded: any = jwt.verify(token, configEnv.SECRET_KEY);
    await pool.query(
      "DELETE FROM usuario_solicitudes WHERE solicitante_id = ? AND receptor_id = ?",
      [id, decoded.id]
    );
    const ioSocket = getSocketInstance();
    const socketId = await getSocketId(id);

    if (socketId) {
      ioSocket.to(socketId).emit("rejectPendingMatch", { id: decoded.id });
    }
    res.status(200).json({
      result: "ok",
    });
  } catch (error) {
    console.error("Error during registered:", error);
    res.status(500).send("registered failed");
  }
};

export const deleteMatch = async (req, res) => {
  const { id } = req.params;
  const token = req.headers["x-access-token"];

  try {
    const decoded: any = jwt.verify(token, configEnv.SECRET_KEY);

    const [results]: any = await pool.query(
      "SELECT * FROM usuario_contacto WHERE usuario_id = ?",
      [decoded.id]
    );

    if (results.findIndex((c) => c.contacto_id == id) != -1) {
      const [result]: any = await pool.query(
        "DELETE FROM usuario_contacto WHERE usuario_id = ? AND contacto_id = ?",
        [decoded.id, id]
      );
      pool.query(
        "DELETE FROM usuario_contacto WHERE usuario_id = ? AND contacto_id = ?",
        [id, decoded.id]
      );
      const ioSocket = getSocketInstance();
      const socketId = await getSocketId(id);
      if (socketId) {
        ioSocket.to(socketId).emit("deleteMatch", { id: decoded.id });
      }

      const [chat]: any = await pool.query(
        "SELECT * FROM usuario_conversaciones WHERE (usuario_id_1 = ? AND usuario_id_2 = ?) OR (usuario_id_1 = ? AND usuario_id_2 = ?)",
        [decoded.id, id, id, decoded.id]
      );

      if (chat.length > 0) {
        await pool.query(
          "DELETE FROM usuario_mensajes WHERE conversacion_id = ?",
          [chat[0].id]
        );
        await pool.query("DELETE FROM usuario_conversaciones WHERE id = ?", [
          chat[0].id,
        ]);
      }
      res.status(200).json({
        result,
      });
    } else {
      res.status(500).send("User does not exist");
    }
  } catch (error) {
    console.error("Error during registered:", error);
    res.status(500).send("registered failed");
  }
};
