import { Router } from 'express';
import * as filesControllers from '../controllers/files.controller';
import multer from 'multer';
import path from 'path';
import fs from 'fs';
import { verifyToken } from '../middlewares/authJwt';
import Compressor from 'compressorjs';
const router = Router();

const storageAvatar = multer.diskStorage({
	destination: './images',
	filename: async function (req, file, cb) {
		if (!fs.existsSync('images')) {
			fs.mkdirSync('images');
		}
		cb(null, `avatar-${Date.now()}${path.extname(file.originalname)}`);
	},
});

const storagePortada = multer.diskStorage({
	destination: './images',
	filename: async function (req, file, cb) {
		if (!fs.existsSync('images')) {
			fs.mkdirSync('images');
		}
		cb(null, `portada-${Date.now()}${path.extname(file.originalname)}`);
	},
});

const uploadAvatar = multer({ storage: storageAvatar });
const uploadPortada = multer({ storage: storagePortada });

router.get('/:filename', filesControllers.getFile);

router.post(
	'/avatar',
	verifyToken,
	uploadAvatar.single('imagen'),
	(req: any, res, next) => {
		const imagen: any = req.file;
		new Compressor(imagen, {
			quality: 0.6, // Ajusta la calidad de compresión de 0 (más baja calidad) a 1 (máxima calidad)
			success(result) {
				// Mover la imagen comprimida a una ubicación adecuada (puedes ajustarla según tus necesidades)
				const fs = require('fs');
				fs.renameSync(result, `images/${imagen}`);

				// Responder con la ruta de la imagen comprimida
				console.log('result:::', result);
				res.json({ path: `/images/${imagen}` });
				next();
			},
			error(err) {
				res.status(500).json({ error: 'Error al comprimir la imagen.' });
			},
		});
	},
	filesControllers.uploadFileAvatar,
);

router.post(
	'/portada',
	verifyToken,
	uploadPortada.single('imagen'),
	filesControllers.uploadFilePortada,
);

router.delete('/portada', verifyToken, filesControllers.deleteFilePortada);
router.delete('/avatar', verifyToken, filesControllers.deleteFileAvatar);

export default router;
