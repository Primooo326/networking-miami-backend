import { Router } from 'express';
import * as authControllers from '../controllers/auth.controller';
import { verifyToken } from '../middlewares/authJwt';

const router = Router();

router.post('/login', authControllers.login);
router.post('/register', authControllers.register);
router.post('/changePasswod', authControllers.changePasswod);
router.post('/refreshToken', authControllers.refreshToken);

export default router;
