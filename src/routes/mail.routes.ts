import { Router } from "express";
import * as emailControllers from "../controllers/mail.controller";
const router = Router();

router.post("/changemail", emailControllers.sendMailChangeMail);
router.post("/invitation", emailControllers.sendMailInvitation);
router.post("/resetpassword", emailControllers.sendMailResetPassword);
router.post("/verificationmail", emailControllers.sendMailVerification);

router.get(
  "/verifytokenchangemail/:token",
  emailControllers.verifyTokenChangeEmail
);
router.get(
  "/verifytokenverificationmail/:token",
  emailControllers.verifyTokenVerificationEmail
);

export default router;
