import { Router } from 'express';

import { readNotify, deleteNotify } from '../controllers/notify.controller';
import { verifyToken } from '../middlewares/authJwt';

const router = Router();

router.delete('/:id', verifyToken, deleteNotify);
router.get('/', verifyToken, readNotify);

export default router;
