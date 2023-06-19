import { Router } from "express";
import * as userControllers from "../controllers/users.controller";
import { verifyToken } from "../middlewares/authJwt";
const router = Router();

router.post("/", userControllers.createUser);

router.get("/", verifyToken, userControllers.readUsers);

router.get("/:userId", userControllers.readUserById);

router.put("/", verifyToken, userControllers.updateUserById);

router.delete("/:userId", userControllers.deleteUserBtId);

export default router;
