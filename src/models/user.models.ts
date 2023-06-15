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
  redesSociales: UsuarioRedesSociales[];
  publicaciones: UsuarioPublicaciones[];
  contactos: Contacto[];
  chats: Chat[];
}

export interface Chat {
  sala: string;
  contacto: Contacto;
  mensajes: Mensajes[];
}
export interface Mensajes {
  fecha: string;
  mensaje: String;
}
export interface UsuarioPublicaciones {
  urlFotos: string[];
  tipo: string;
  descripcion: string;
  comentarios: PublicacionComentarios[];
  reacciones: PublicacionReacciones[];
  compartidos: PublicacionCompartidos[];
  precio: number | null;
}
export interface PublicacionCompartidos {
  usuario: Contacto;
}
export interface PublicacionReacciones {
  usuario: Contacto;
  reaccion: string;
}
export interface PublicacionComentarios {
  usuario: Contacto;
  comentario: string;
  fecha: string;
}
export interface Contacto {
  id: string;
  nombre: string;
  email: string;
  avatar: string;
  fotoPortada: string;
}
export interface UsuarioRedesSociales {
  red: string;
  link: string;
}
