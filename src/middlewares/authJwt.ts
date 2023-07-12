import jwt from "jsonwebtoken";
import configEnv from "../config";

import pool from "../database";


export const verifyToken = async (req, res, next) => {
  
  try {
    const token = req.headers["x-access-token"];

    if (token) {
      try {
        const decoded: any = jwt.verify(token, configEnv.SECRET_KEY)
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
      } catch (error:any) {
        // Object.entries(error).forEach(([key, value]) => {
        //   console.log(`key:${key}: ${value}`);
        // });
        res.status(401).send(error.message);
      }
      
    } else {
      return res.status(404).send("no token available");
    }
  } catch (error:any) {
    console.log(error);
    res.status(500).send(error);
  }
};
