CREATE TABLE IF NOT EXISTS usuario (
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

CREATE TABLE IF NOT EXISTS usuariotemasinteres (
  usuario_id INT,
  interes VARCHAR(255),
  FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);

CREATE TABLE IF NOT EXISTS usuarioareaexperiencia (
  usuario_id INT,
  experiencia VARCHAR(255),
  FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);

CREATE TABLE IF NOT EXISTS usuariotipoconexion (
  usuario_id INT,
  conexion VARCHAR(255),
  FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);

CREATE TABLE IF NOT EXISTS usuariolenguajes (
  usuario_id INT,
  lenguaje VARCHAR(255),
  FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);

CREATE TABLE IF NOT EXISTS usuarioredessociales (
  usuario_id INT,
  red VARCHAR(255),
  link VARCHAR(255),
  FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);


CREATE TABLE IF NOT EXISTS usuario_contacto (
  
  usuario_id INT,
  contacto_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuario(id),
    FOREIGN KEY (contacto_id) REFERENCES usuario(id)
);

CREATE TABLE IF NOT EXISTS usuario_solicitudes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  solicitante_id INT,
  receptor_id INT,
  fecha_solicitud VARCHAR(255),
  estado VARCHAR(255),
  FOREIGN KEY (solicitante_id) REFERENCES usuario(id),
  FOREIGN KEY (receptor_id) REFERENCES usuario(id)
);
CREATE TABLE IF NOT EXISTS usuario_notificaciones (
  id INT PRIMARY KEY AUTO_INCREMENT,
  usuario_id INT,
  title VARCHAR(255),
  message TEXT,
  data TEXT,
  time VARCHAR(255),
  estado VARCHAR(255),
  type VARCHAR(255),
  FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);

CREATE TABLE IF NOT EXISTS usuarios_conectados (
    id INT PRIMARY KEY AUTO_INCREMENT,
    socket_id VARCHAR(255) NOT NULL,
    usuario_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);

CREATE TABLE Conversaciones (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50),
  usuario_id_1 INT,
  usuario_id_2 INT,
  FOREIGN KEY (usuario_id_1) REFERENCES usuario(id),
  FOREIGN KEY (usuario_id_2) REFERENCES usuario(id)
);

CREATE TABLE usuario_mensajes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  conversacion_id INT,
  remitente_id INT,
  destinatario_id INT,
  contenido VARCHAR(255),
  fecha_envio VARCHAR(255),
  FOREIGN KEY (conversacion_id) REFERENCES Conversaciones(id),
  FOREIGN KEY (remitente_id) REFERENCES usuario(id),
  FOREIGN KEY (destinatario_id) REFERENCES usuario(id)
);

CREATE TABLE IF NOT EXISTS areas_experiencia (
	titulo VARCHAR(255),
    descripcion TEXT
);
CREATE TABLE IF NOT EXISTS areas_intereses (
	interes VARCHAR(255)
);
CREATE TABLE IF NOT EXISTS conexiones (
	conexion VARCHAR(255)
);


CREATE TABLE IF NOT EXISTS lenguajes (
	lenguaje VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS condados (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(255)
);
CREATE TABLE IF NOT EXISTS ciudades (
  condado_id INT,
  ciudad VARCHAR(255),
  FOREIGN KEY (condado_id) REFERENCES condados(id)
);