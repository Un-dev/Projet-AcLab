const server = require('http').createServer();
const io = require('socket.io')(server);

io.on('connection', (socket) => {
  console.log(socket.id);
});

io.listen(3000 | process.env.PORT);
