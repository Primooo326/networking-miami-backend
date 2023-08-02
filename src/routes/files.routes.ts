import { Router } from "express";
import * as filesControllers from "../controllers/files.controller";
import multer from "multer";
import path from "path";
import fs from "fs";
import { verifyToken } from "../middlewares/authJwt";


const router = Router();
const storageAvatar = multer.diskStorage({
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
const storagePortada = multer.diskStorage({
  destination: "./images",
  filename: function (req, file, cb) {

    if(file){

      if (!fs.existsSync("images")) {
        fs.mkdirSync("images");
      }
        cb(
          null,
          `portada-${Date.now()}${path.extname(file.originalname)}`
          );
      }else {
        console.log("No se ha seleccionado ninguna imagen");
        throw new Error("No se ha seleccionado ninguna imagen");
      }
    }
    
});

const uploadAvatar = multer({ storage: storageAvatar });
const uploadPortada = multer({ storage: storagePortada });
router.get("/:filename", filesControllers.getFile);
router.post("/avatar",verifyToken , uploadAvatar.single("imagen"), filesControllers.uploadFileAvatar);
router.post("/portada",verifyToken , uploadPortada.single("imagen"), filesControllers.uploadFilePortada);

export default router;
