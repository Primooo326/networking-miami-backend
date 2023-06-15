import { createPool } from "mysql2/promise";

let pool = createPool({
  host: "localhost",
  user: "root",
  password: "",
  port: 3306,
});

async function initializeDatabase() {
  try {
    const connection = await pool.getConnection();

    await connection.query("CREATE DATABASE IF NOT EXISTS networking");
    await connection.query("USE networking");

    await connection.query(`
      CREATE TABLE IF NOT EXISTS usuarios (
        id INT PRIMARY KEY AUTO_INCREMENT,
        email VARCHAR(255) NOT NULL,
        password VARCHAR(255) NOT NULL,
        name VARCHAR(255) NOT NULL,
        birthdate DATE NOT NULL,
        phone VARCHAR(20) NOT NULL,
        gender VARCHAR(20) NOT NULL,
        city VARCHAR(255) NOT NULL,
        biography TEXT NOT NULL,
        objetivo TEXT NOT NULL,
        avatar VARCHAR(255),
        isMailVerified BOOLEAN NOT NULL DEFAULT FALSE
      )
    `);

    await connection.query(`
      CREATE TABLE IF NOT EXISTS usuarios_languages (
        usuario_id INT,
        language VARCHAR(255),
        FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
      )
    `);

    await connection.query(`
      CREATE TABLE IF NOT EXISTS usuarios_area_experiencia (
        usuario_id INT,
        area_experiencia VARCHAR(255),
        FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
      )
    `);

    await connection.query(`
      CREATE TABLE IF NOT EXISTS usuarios_temas_interes (
        usuario_id INT,
        tema_interes VARCHAR(255),
        FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
      )
    `);

    await connection.query(`
      CREATE TABLE IF NOT EXISTS usuarios_tipo_conexion (
        usuario_id INT,
        tipo_conexion VARCHAR(255),
        FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
      )
    `);

    connection.release();
    console.log('Database "networking" and tables created successfully.');
  } catch (error) {
    console.error("Error initializing database:", error);
  }
}

initializeDatabase();
pool = createPool({
  host: "localhost",
  user: "root",
  password: "",
  port: 3306,
  database: "networking2",
});

export default pool;
