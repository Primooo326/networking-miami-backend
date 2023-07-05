import configEnv from "../config";
import jwt from 'jsonwebtoken';
import pool from "../database";



export const getNotification = async (req: any, res: any) => {

	const token = req.headers['x-access-token'];

	try {
		const decoded: any = jwt.verify(token, configEnv.SECRET_KEY);
        
        const [rows]:any[] = await pool.query("SELECT * FROM usuarioNotificaciones WHERE usuario_id = ? ORDER BY time DESC", [decoded.id]);

        res.json(rows.map((data)=> {return{...data, data:JSON.parse(data.data)}}));


    } catch (error) {
        res.status(500).json({ message: "Error al obtener las notificaciones" });
    }

}