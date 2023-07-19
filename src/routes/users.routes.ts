import { Router } from 'express';
import * as userControllers from '../controllers/users.controller';
import { verifyToken } from '../middlewares/authJwt';
const router = Router();

router.get('/', verifyToken, userControllers.readUsers);
router.get('/search', userControllers.searchUser);
router.get('/all', userControllers.readAllUsers);
router.post('/searchByParameters', userControllers.searchUserByParameters3);
router.get('/:userId', userControllers.readUserById);
router.put('/', verifyToken, userControllers.updateUserById);


export default router;
