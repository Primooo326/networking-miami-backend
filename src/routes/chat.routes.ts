import { Router } from 'express';
import * as chatControllers from '../controllers/chat.controller';
const router = Router();

router.get('/readChats', chatControllers.readChats);
router.post('/readMessages', chatControllers.readMessages);
router.post('/sendMessage', chatControllers.sendMessage);
router.post('/getChatByIdUser', chatControllers.readChatByIdUser);
router.put('/updateMessage', chatControllers.updateMessage);

export default router;
