import { Router } from "express";
import * as userControllers from "../controllers/users.controller";
const router = Router();

router.post("/", userControllers.createUser);

router.get("/", userControllers.readUsers);

router.get("/:userId", userControllers.readUserById);

router.put("/:userId", userControllers.updateUserById);

router.delete("/:userId", userControllers.deleteUserBtId);

export default router;
