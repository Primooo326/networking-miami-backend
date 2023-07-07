import { Router } from "express";
import * as filesControllers from "../controllers/files.controller";
import multer from "multer";
import path from "path";
import fs from "fs";
import { verifyToken } from "../middlewares/authJwt";


const router = Router();
const storage = multer.diskStorage({
  destination: "./images",
  filename: function (req, file, cb) {
    
  if (!fs.existsSync("images")) {
    fs.mkdirSync("images");
  }
    cb(
      null,
      `profile-${Date.now()}${path.extname(file.originalname)}`
      );
  },
});

const upload = multer({ storage: storage });
router.get("/:filename", filesControllers.getFile);
router.post("/",verifyToken , upload.single("imagen"), filesControllers.uploadFile);

export default router;
