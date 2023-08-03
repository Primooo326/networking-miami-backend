import { Router } from 'express';
import * as filesControllers from '../controllers/files.controller';
import multer from 'multer';
import path from 'path';
import fs from 'fs';
import { verifyToken } from '../middlewares/authJwt';
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
