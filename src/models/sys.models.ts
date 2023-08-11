export enum TypeMail {
  verification = "verification",
  invitation = "invitation",
  passwordReset = "passwordReset",
  changeEmail = "changeEmail",
}
export type ENotifyTypes = 'match' | 'chat'
export type ENotifyStatus = "leido" | "no leido" | "eliminado";
export type ESolicitudStatus = "pendiente" | "aceptada" |"rechazada" | "cancelada";