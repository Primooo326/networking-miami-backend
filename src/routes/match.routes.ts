import { Router } from 'express';
import * as matchControllers from '../controllers/match.controller';
import { verifyToken } from '../middlewares/authJwt';
import { createNotify } from '../controllers/notify.controller';

const router = Router();

router.post(
	'/request',
	verifyToken,
	matchControllers.requestMatch,
	createNotify,
);
router.post('/', matchControllers.createMatch);
router.post('/updateMatch', matchControllers.updateMatch);
router.get('/requestmatches', verifyToken, matchControllers.readMyRequest);
router.get('/pendingmatches', verifyToken, matchControllers.readPendingMatches);
router.get('/:id', verifyToken, matchControllers.readMatch);
router.delete(
	'/deleteRequestMatch/:id',
	verifyToken,
	matchControllers.deleteRequestMatch,
);
router.delete(
	'/rejectPendingMatch/:id',
	verifyToken,
	matchControllers.rejectPendingMatch,
);
router.delete('/deleteMatch/:id', verifyToken, matchControllers.deleteMatch);

export default router;
