export interface IUser {
	id: string;
	email: string;
	name: string;
	password: string;
	birthdate: string;
	country: string;
	city: string;
	gender: string;
	phone: string;
	biography: string;
	avatar: string;
}

export interface Usuario {
	id: number | string
	nombre: string
	email: string
	fechaNacimiento: string
	verificado: number
	condado: string
	ciudad: string
	genero: string
	telefono: string
	biografia: string
	avatar: string
	fotoPortada: string
	objetivo: string
	fechaIngreso: string
	temasInteres: string[]
	areaExperiencia: string[]
	tipoConexion: string[]
	lenguajes: string[]
}

export interface chat {
  sala: string;
  contacto: contacto;
  mensajes: mensajes[];
}
export interface mensajes {
  fecha: string;
  mensaje: String;
}
export interface usuariopublicaciones {
  urlFotos: string[];
  tipo: string;
  descripcion: string;
  comentarios: publicacioncomentarios[];
  reacciones: publicacionreacciones[];
  compartidos: publicacioncompartidos	[];
  precio: number | null;
}
export interface publicacioncompartidos	 {
  usuario: contacto;
}
export interface publicacionreacciones {
  usuario: contacto;
  reaccion: string;
}
export interface publicacioncomentarios {
  usuario: contacto;
  comentario: string;
  fecha: string;
}
export interface contacto {
  id: string;
  nombre: string;
  email: string;
  avatar: string;
  fotoPortada: string;
}
export interface usuarioredessociales {
  red: string;
  link: string;
}
