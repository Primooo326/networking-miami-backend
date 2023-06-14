import jwt from "jsonwebtoken";
import config from "../config";
import pool from "../database";

export const verifyToken = async (req, res, next) => {
  const token = req.headers["x-access-token"];

  try {
    if (token) {
      const decoded: any = jwt.verify(token, config.SECRETKEY);
      console.log(decoded);
      const [results]: any = await pool.query(
        "SELECT * FROM usuarios WHERE id = ?",
        [decoded.id]
      );

      if (results.length === 0) {
        res.status(404).send("User does not exist");
      } else {
        next();
      }
    } else {
      return res.status(403).json({ message: "no token available" });
    }
  } catch (error) {
    res.status(500).send(error);
  }
};
