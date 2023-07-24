import { Router } from 'express';
import * as userControllers from '../controllers/users.controller';
import { verifyToken } from '../middlewares/authJwt';
const router = Router();

router.get('/userById',verifyToken, userControllers.readUserById);
router.get('/search', userControllers.searchUser);
router.get('/all', userControllers.readAllUsers);
router.get('/', verifyToken, userControllers.readUsers);
router.post('/searchByParameters',verifyToken, userControllers.searchUserByParameters3);
router.put('/', verifyToken, userControllers.updateUserById);

export default router;
