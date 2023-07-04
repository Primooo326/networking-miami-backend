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
        titulo: "¡Nueva solicitud de conexión!",
        body: `${data.usuario_request.nombre} Te ha enviado una solicitud.`,
        data: data.usuario_request
    }
    try {
        await pool.query(
            "INSERT INTO usuarioNotificaciones (usuario_id,titulo,body,data) VALUES (?,?,?,?)",
            [datos.usuario_id,datos.titulo,datos.body,JSON.stringify(datos.data)]
          );
          return datos;
    } catch (error) {
        console.log(error);
    }
}
async function sendNotifyChat(){}