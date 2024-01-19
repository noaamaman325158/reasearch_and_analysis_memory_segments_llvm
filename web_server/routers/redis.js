import express from 'express';
import redis from 'redis'; // Import the 'redis' module

const redisCreateClient = redis.createClient; // Get the createClient function

const redisRouter = express.Router();

// Create a Redis client
const client = redisCreateClient({ host: 'localhost', port: 6379 });

client.on('error', (err) => console.log('Redis Client Error', err));

// GET /data endpoint
redisRouter.get('/data', async (req, res) => {
    try {
        // Retrieve all keys in the Redis database
        const keys = await new Promise((resolve, reject) => {
            client.keys('*', (err, keys) => {
                if (err) reject(err);
                resolve(keys);
            });
        });

        res.json({ keys });
    } catch (error) {
        console.error('Error fetching keys from Redis:', error);
        res.status(500).send('Server Error');
    }
});

// Close the Redis client during server shutdown
process.on('SIGINT', () => {
    client.quit(() => {
        console.log('Redis client closed');
        process.exit(0);
    });
});

export default redisRouter;
