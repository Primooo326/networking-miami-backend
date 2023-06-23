import { createPool } from "mysql2/promise";
import {
  configEnv
} from "./config";
const pool = createPool({
  host: configEnv.DB_HOST,
  user: configEnv.DB_USER,
  password: configEnv.DB_PASSWORD,
  port: Number(configEnv.DB_PORT),
  database: configEnv.DB_DATABASE,
});

export default pool;
