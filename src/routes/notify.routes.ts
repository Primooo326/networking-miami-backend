import { Router } from "express";

import {getNotification} from "../controllers/notify.controller";
import { verifyToken } from "../middlewares/authJwt";

const router = Router();

router.get("/",verifyToken, getNotification);


export default router;
