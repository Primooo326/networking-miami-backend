import { Router } from "express";
import * as adminControllers from "../controllers/admin.controller";
const router = Router();

router.post("/experiencia", adminControllers.create_area_experiencia);
router.get("/experiencia", adminControllers.read_area_experiencia);
router.post("/interes", adminControllers.create_area_interes);
router.get("/interes", adminControllers.read_area_interes);
router.post("/conexion", adminControllers.create_conexion);
router.get("/conexion", adminControllers.read_conexion);
router.post("/condados", adminControllers.create_condados);
router.get("/condados", adminControllers.read_condados);
router.post("/lenguaje", adminControllers.create_lenguaje);
router.get("/lenguaje", adminControllers.read_lenguaje);


export default router;
