import { Router } from "express";
import * as emailControllers from "../controllers/mail.controller";
import { verifyToken } from "../middlewares/authJwt";
const router = Router();

router.post("/changemail", emailControllers.sendMailChangeMail);
router.post("/sendinvitation", emailControllers.sendMailInvitation);
router.post("/resetpassword", emailControllers.sendMailResetPassword);
router.post("/newContact", emailControllers.sendMailNewContact);
router.post("/verificationmail", emailControllers.sendMailVerification);
router.get("/resetPasswwordForm/:token", emailControllers.resetPasswwordForm);

router.get(
  "/verifyTokenNewContact/:token",
  emailControllers.verifyTokenNewContact
);
router.get(
  "/verifytokenchangemail/:token",
  emailControllers.verifyTokenChangeEmail
);
router.get(
  "/verifytokenverificationmail/:token",
  emailControllers.verifyTokenVerificationEmail
);

export default router;
