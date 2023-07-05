import { ENotifyTypes } from "models/sys.models";
import pool from "../database";


export const userNotify = async (datos:any,type:ENotifyTypes) => {

    const {data} = datos;
    if(type === 'match'){
        return sendNotifyMatch(data)
    }else if(type === 'chat'){
        return sendNotifyChat()
    }

}


async function sendNotifyMatch(data){
    const datos = {
        usuario_id: data.usuario_id,
        title: "¡Nueva solicitud!",
        message: `${data.usuario_request.nombre} te ha enviado una solicitud.`,
        data: data.usuario_request,
        time: new Date().toISOString(),
        type: "match",
        estado:"no leido"
    }
    try {
        await pool.query(
            "INSERT INTO usuarioNotificaciones (usuario_id,title,message,data,estado,time,type) VALUES (?,?,?,?,?,?,?)",
            [datos.data.usuario_id,datos.title,datos.message,JSON.stringify(datos.data),"no leido",datos.time,datos.type]
          );
          return datos;

    } catch (error) {
        console.log(error);
    }
}
async function sendNotifyChat(){}