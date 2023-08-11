import { Router } from 'express';
import * as filesControllers from '../controllers/files.controller';
import multer from 'multer';
import path from 'path';
import fs from 'fs';
import { verifyToken } from '../middlewares/authJwt';
const router = Router();
import * as Jimp from 'jimp';

// Middleware para comprimir la imagen a JPEG con la calidad deseada
// async function compressMiddleware(req, res, next) {
// 	try {
// 		// Obtener el tamaño deseado en bytes (300 KB)
// 		const tamanoDeseadoBytes = 500 * 1024;

// 		// Calcular la calidadDeseada utilizando una regla de tres
// 		const calidadDeseada = Math.floor(
// 			(100 * tamanoDeseadoBytes) / req.file.size,
// 		);

// 		// Cargar la imagen usando Jimp y comprimir con la calidad deseada
// 		await Jimp.read(req.file.path).then((imagen) =>
// 			imagen.quality(calidadDeseada).writeAsync(req.file.path),
// 		);

// 		console.log('Imagen comprimida exitosamente');

// 		// Continuar con el siguiente middleware o controlador
// 		next();
// 	} catch (error) {
// 		console.error('Error al comprimir la imagen:', error);
// 		// En caso de error, puedes enviar una respuesta de error al cliente
// 		res.status(500).json({ error: 'Error al comprimir la imagen' });
// 	}
// }
// Middleware para comprimir la imagen
async function compressMiddleware(req, res, next) {
	try {
		// Obtener el archivo subido desde el middleware 'uploadAvatar'
		const imagen = await Jimp.read(req.file.path);

		// Comprimir la imagen con la calidad deseada
		const calidadDeseada = 70; // Puedes ajustar la calidad según tus necesidades
		imagen.quality(calidadDeseada);

		// Sobreescribir la imagen original con la imagen comprimida
		await imagen.writeAsync(req.file.path);

		console.log('Imagen comprimida exitosamente');

		// Continuar con el siguiente middleware o controlador
		next();
	} catch (error) {
		console.error('Error al comprimir la imagen:', error);
		// En caso de error, puedes enviar una respuesta de error al cliente
		res.status(500).json({ error: 'Error al comprimir la imagen' });
	}
}
// Middleware para ajustar el tamaño respetando la relación de aspecto
async function ajustarAvatarMiddleware(req, res, next) {
	try {
		const tamanoMaximo = 200; // Tamaño máximo deseado para el ancho o alto de la imagen en píxeles

		// Cargar la imagen usando Jimp
		const imagen = await Jimp.read(req.file.path);

		// Obtener el ancho y alto actual de la imagen
		const { width, height } = imagen.bitmap;

		// Calcular el nuevo tamaño respetando la relación de aspecto original
		let nuevoAncho = width;
		let nuevoAlto = height;

		if (width > height) {
			// Si el ancho es mayor que el alto, ajustar el ancho al tamaño máximo y recalcular el alto
			nuevoAncho = tamanoMaximo;
			nuevoAlto = Math.round((tamanoMaximo / width) * height);
		} else {
			// Si el alto es mayor o igual al ancho, ajustar el alto al tamaño máximo y recalcular el ancho
			nuevoAlto = tamanoMaximo;
			nuevoAncho = Math.round((tamanoMaximo / height) * width);
		}

		// Redimensionar la imagen manteniendo la relación de aspecto
		imagen.resize(nuevoAncho, nuevoAlto);

		// Sobreescribir la imagen original con la imagen ajustada
		await imagen.writeAsync(req.file.path);

		console.log('Imagen ajustada exitosamente');

		// Continuar con el siguiente middleware o controlador
		next();
	} catch (error) {
		console.error('Error al ajustar la imagen:', error);
		// En caso de error, puedes enviar una respuesta de error al cliente
		res.status(500).json({ error: 'Error al ajustar la imagen' });
	}
}
// Middleware para ajustar el tamaño de la imagen de portada respetando la relación de aspecto
async function ajustarPortadaMiddleware(req, res, next) {
	try {
		const anchoEstandar = 1200;
		const altoEstandar = 600;

		// Cargar la imagen usando Jimp
		const imagen = await Jimp.read(req.file.path);

		// Obtener el ancho y alto actual de la imagen
		const { width, height } = imagen.bitmap;

		// Calcular el nuevo tamaño manteniendo la relación de aspecto original
		let nuevoAncho = width;
		let nuevoAlto = height;

		if (width > height) {
			// Si el ancho es mayor que el alto, ajustar el ancho al tamaño estándar y recalcular el alto
			nuevoAncho = anchoEstandar;
			nuevoAlto = Math.round((anchoEstandar / width) * height);
		} else {
			// Si el alto es mayor o igual al ancho, ajustar el alto al tamaño estándar y recalcular el ancho
			nuevoAlto = altoEstandar;
			nuevoAncho = Math.round((altoEstandar / height) * width);
		}

		// Redimensionar la imagen manteniendo la relación de aspecto
		imagen.resize(nuevoAncho, nuevoAlto);

		// Sobreescribir la imagen original con la imagen ajustada
		await imagen.writeAsync(req.file.path);

		console.log('Imagen de portada ajustada exitosamente');

		// Continuar con el siguiente middleware o controlador
		next();
	} catch (error) {
		console.error('Error al ajustar la imagen de portada:', error);
		// En caso de error, puedes enviar una respuesta de error al cliente
		res.status(500).json({ error: 'Error al ajustar la imagen de portada' });
	}
}
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
	ajustarAvatarMiddleware,
	compressMiddleware,
	filesControllers.uploadFileAvatar,
);

router.post(
	'/portada',
	verifyToken,
	uploadPortada.single('imagen'),
	ajustarPortadaMiddleware,
	compressMiddleware,
	filesControllers.uploadFilePortada,
);

router.delete('/portada', verifyToken, filesControllers.deleteFilePortada);
router.delete('/avatar', verifyToken, filesControllers.deleteFileAvatar);

export default router;
