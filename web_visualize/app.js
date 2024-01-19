const express = require('express');
const redis = require('redis');
const redisRouter = express.Router('./router/redis.js');

const app = express();

//Middlewares
app.use('/api/redis',redisRouter);
app.use(express.json())
app.use(express.urlencoded({ extended: true})) 

// Create a Redis client
const client = redis.createClient({ host: 'localhost', port: 6379 });

client.on('error', (err) => console.log('Redis Client Error', err));


app.listen(3000, () => {
    console.log('Server is running on port 3000');
});