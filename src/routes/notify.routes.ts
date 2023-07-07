import { Router } from "express";

import {readNotify} from "../controllers/notify.controller";
import { verifyToken } from "../middlewares/authJwt";

const router = Router();

router.get("/",verifyToken, readNotify);


export default router;
