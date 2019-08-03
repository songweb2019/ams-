const express = require('express');
var server = express();
var userRouter = require('./router/user.js');
var productRouter = require('./router/product.js');
const bodyParser = require('body-parser');
const cors = require('cors');
server.listen(3000);
//npm i -save cors
// server.use(cors({
//     origin: ["http://127.0.0.1:8080", "http://127.0.0.1:8080"]
//         //http://www.mubeixi.top http://127.0.0.1:5500
// }));
server.use(cors({
    origin: ["http://127.0.0.1:8080","http://127.0.0.1:5555",
        "http://localhost:8080","http://localhost:5555",
    ],
    credentials: true
}))

server.use(bodyParser.urlencoded({
    extended: false
}));
server.use(express.static('public'));
server.use('/user', userRouter);
server.use('/product', productRouter);