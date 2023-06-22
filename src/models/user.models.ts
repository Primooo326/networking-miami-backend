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

export interface usuario {
  id: string;
  nombre: string;
  email: string;
  fechaNacimiento: string;
  verificado: boolean;
  condado: string;
  ciudad: string;
  genero: string;
  telefono: string;
  biografia: string;
  avatar: string;
  fotoPortada: string;
  objetivo: string;
  fechaIngreso: string;
  temasInteres: { id: string; interes: string }[];
  areaExperiencia: { id: string; experiencia: string }[];
  tipoConeccion: { id: string; coneccion: string }[];
  lenguajes: { id: string; lenguaje: string }[];
  ocupaciones: { id: string; ocupacion: string }[];
  redesSociales: usuarioredessociales[];
  publicaciones: usuariopublicaciones[];
  contactos: contacto[];
  chats: chat[];
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
