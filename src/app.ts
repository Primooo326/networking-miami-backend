import express from 'express';
import morgan from 'morgan';
import productsRoutes from './routes/products.routes';
import authRoutes from './routes/auth.routes';
import userRoutes from './routes/users.routes';
const app = express();

import cors from 'cors';
app.use(morgan('dev'));
app.use(express.json());
app.use(cors());
app.get('/', (req, res) => {
	res.send('welcome');
});
app.get('/ping', async (req, res) => {
	res.send('pong');
});
app.use('/api/auth', authRoutes);
app.use('/api/products', productsRoutes);
app.use('/api/users', userRoutes);

// Verificar si existe la base de datos "networking" al inicializar
  

export default app;

