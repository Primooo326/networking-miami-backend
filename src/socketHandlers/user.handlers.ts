import pool from "../database";

export const userConnnect = async (data, socketId) => {
  try {
    await pool.query("DELETE FROM usuarios_conectados WHERE usuario_id = ?", [ data.id ])
    await pool.query(
      "INSERT INTO usuarios_conectados (socket_id,usuario_id) VALUES (?,?)",
      [socketId, data.id]
    );

  } catch (error) {
    console.log(error);
  }
};
export const userDisconnect = async (socketId) => {
  try {
    await pool.query("DELETE FROM usuarios_conectados WHERE socket_id = ?", [
      socketId,
    ]);

    console.log("Usuario desconectado");
  } catch (error) {
    console.log(error);
  }
};
export const getUsersConnected = async () => {
  try {
    const [rows]: any = await pool.query("SELECT * FROM usuarios_conectados");
    return rows;
  } catch (error) {
    console.log(error);
  }
};
export const getSocketId = async (id) => {
  try {
    const [rows]: any = await pool.query(
      "SELECT * FROM usuarios_conectados WHERE usuario_id = ?",
      [id]
    );
    return rows[0].socket_id;
  } catch (error) {
    console.log(error);
  }
};

// export const getSocketIdBySocket = async (socketId) =>{
//     try {
//         const [rows]: any = await pool.query("SELECT * FROM usuarios_conectados WHERE socket_id = ?",[socketId]);
//         return rows;
//     } catch (error) {
//         console.log(error);
//     }
// }
