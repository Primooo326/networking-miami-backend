import { Router } from 'express';
import * as productControllers from '../controllers/products.controller';
const router = Router();

router.post('/', productControllers.createProduct);

router.get('/', productControllers.readProducts);

router.get('/:productId', productControllers.readProductById);

router.put('/:productId', productControllers.updateProductById);

router.delete('/:productId', productControllers.deleteProductBtId);

export default router;
