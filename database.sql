-- Tabla usuario
CREATE TABLE usuario (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(255),
  email VARCHAR(255),
  password VARCHAR(255),
  fechaNacimiento VARCHAR(255),
  verificado BOOLEAN DEFAULT FALSE,
  condado VARCHAR(255),
  ciudad VARCHAR(255),
  genero VARCHAR(255),
  telefono VARCHAR(255),
  biografia TEXT,
  avatar VARCHAR(255),
  fotoPortada VARCHAR(255),
  objetivo TEXT,
  fechaIngreso VARCHAR(255)
);

-- Tabla usuariotemasinteres
CREATE TABLE usuariotemasinteres (
  usuario_id INT,
  interes VARCHAR(255),
  FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);

-- Tabla usuarioareaexperiencia
CREATE TABLE usuarioareaexperiencia (
  usuario_id INT,
  experiencia VARCHAR(255),
  FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);

-- Tabla usuariotipoconexion
CREATE TABLE usuariotipoconexion (
  usuario_id INT,
  conexion VARCHAR(255),
  FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);

-- Tabla usuariolenguajes
CREATE TABLE usuariolenguajes (
  usuario_id INT,
  lenguaje VARCHAR(255),
  FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);

-- Tabla usuarioredessociales
CREATE TABLE usuarioredessociales (
  usuario_id INT,
  red VARCHAR(255),
  link VARCHAR(255),
  FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);


-- Tabla contacto
CREATE TABLE contacto (
  
  usuario_id INT,
  contacto_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuario(id),
    FOREIGN KEY (contacto_id) REFERENCES usuario(id)
);


-- Tabla usuariolenguajes
CREATE TABLE usuarioNotificaciones (
  id INT PRIMARY KEY AUTO_INCREMENT,
  usuario_id INT,
  titulo VARCHAR(255),
  body TEXT,
  data TEXT,
  FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);

CREATE TABLE usuarios_conectados (
    id INT PRIMARY KEY AUTO_INCREMENT,
    socket_id VARCHAR(255) NOT NULL,
    usuario_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);

CREATE TABLE areas_experiencia (
	titulo VARCHAR(255),
    descripcion TEXT
);
CREATE TABLE areas_intereses (
	interes VARCHAR(255)
);
CREATE TABLE conexiones (
	conexion VARCHAR(255)
);
CREATE TABLE lenguajes (
	lenguaje VARCHAR(255)
);
CREATE TABLE condados (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(255)
);
CREATE TABLE ciudades (
  condado_id INT,
  ciudad VARCHAR(255),
  FOREIGN KEY (condado_id) REFERENCES condados(id)
);