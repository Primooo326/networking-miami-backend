import jwt from "jsonwebtoken";
import configEnv from "../config";

import pool from "../database";

export const verifyToken = async (req, res, next) => {
  const token = req.headers["x-access-token"];

  try {
    if (token) {
      const decoded: any = jwt.verify(token, configEnv.SECRET_KEY);
      console.log(decoded);
      const [results]: any = await pool.query(
        "SELECT * FROM usuario WHERE id = ?",
        [decoded.id]
      );

      if (results.length === 0) {
        res.status(404).send("User does not exist");
      } else {
        next();
      }
    } else {
      return res.status(403).send("no token available");
    }
  } catch (error) {
    console.log(error);
    res.status(500).send(error);
  }
};
