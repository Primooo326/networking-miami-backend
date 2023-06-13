import { Router } from "express";
import * as authControllers from "../controllers/auth.controller";
const router = Router();

router.post("/login", authControllers.login);
router.post("/register", authControllers.register);
router.post("/resetpassword", authControllers.resetPassword);

export default router;
