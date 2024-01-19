import express from 'express';
import redisRouter from './routers/redis.js'; // Corrected import
import redis from 'redis'; // Import the 'redis' module

const app = express();

// Middlewares
app.use('/api/redis', redisRouter); // Mount the redisRouter under /api/redis
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Create a Redis client
const client = redis.createClient({ host: 'localhost', port: 6379 });

client.on('error', (err) => console.log('Redis Client Error', err));

app.listen(3000, () => {
    console.log('Server is running on port 3000');
});
