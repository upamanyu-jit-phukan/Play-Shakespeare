const express = require("express");
const http = require("http");
const mongoose = require("mongoose");

const app = express();
const port = process.env.PORT || 3000;
var server = http.createServer(app);
var io = require("socket.io")(server);

app.use(express.json());

server.listen(port, "0.0.0.0", () => {
    console.log(`Server started and running on port ${port}.`);
});

io.on('connection', (socket) => {
    console.log(socket.id);
    socket.on('create-game', async({duration}) => {
        try {

        } catch(e) {
            console.log(e);
        }
    })
});

const DB = "mongodb+srv://ujpghy:%23UJPmongo12@cluster0.5plfxaf.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";

mongoose.connect(DB).then(() => {
    console.log("Connection is succesful");
})
.catch((e) => {
    console.log(e);
})
