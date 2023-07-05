import { Router } from 'express';
import * as matchControllers from '../controllers/match.controller';
import { verifyToken } from '../middlewares/authJwt';
const router = Router();

router.post('/request', verifyToken, matchControllers.requestMatch);
router.post('/', verifyToken, matchControllers.createMatch);
router.get('/:id', verifyToken, matchControllers.readMatch);
router.delete('/:id', verifyToken, matchControllers.deleteMatch);
export default router;
