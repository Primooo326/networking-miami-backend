import { Router } from 'express';
import * as userControllers from '../controllers/users.controller';
const router = Router();

router.post('/', userControllers.createUser);

router.get('/', userControllers.readUsers);

router.get('/:productId', userControllers.readUserById);

router.put('/:productId', userControllers.updateUserById);

router.delete('/:productId', userControllers.deleteUserBtId);

export default router;
