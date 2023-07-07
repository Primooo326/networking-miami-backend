import path from "path";
import configEnv from "../config"
import fs from "fs"
import pool from '../database';
import jwt from 'jsonwebtoken';


export const uploadFile = async (req,res) =>{
	const token = req.headers['x-access-token'];
    try {
		const decoded: any = jwt.verify(token, configEnv.SECRET_KEY);
        const [result]: any = await pool.query('UPDATE usuario SET avatar = ? WHERE id = ?', [`${configEnv.URL_BACK}api/file/${req.file.filename}`,decoded.id]) 
        
        res.json({path:`${configEnv.URL_BACK}api/file/${req.file.filename}`,request:req.file})

        
    } catch (error) {
        res.status(500).send(error)
    }

}

export const getFile = async (req,res) =>{

    try {
        fs.readFile(path.join(__dirname,`../../images/${req.params.filename}`), (err,data) =>{
            if(err) throw res.send(err);
            res.send(data)
        })
    } catch (error) {
        res.send(error)
    }

}
