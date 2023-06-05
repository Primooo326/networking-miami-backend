import express from 'express';
import morgan from 'morgan';
import productsRoutes from './routes/products.routes';
import authRoutes from './routes/auth.routes';
import pool from './database';
const app = express();

import cors from 'cors';
app.use(morgan('dev'));
app.use(express.json());
app.use(cors());
app.get('/', (req, res) => {
	res.send('welcome');
});
app.get('/ping', async (req, res) => {
	const [result] = await pool.query('CREATEt');
	res.json(result);
});
app.use('/api/auth', authRoutes);
app.use('/api/products', productsRoutes);

export default app;
