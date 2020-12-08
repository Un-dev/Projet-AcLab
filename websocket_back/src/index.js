const server = require('http').createServer();
const io = require('socket.io')(server);

let currRoomNumber = 1;

io.on('connection', (socket) => {
  console.log(`Connection established with ${socket.id} id`);

  io.on('create_room', () => {
    const newRoom = `room${currRoomNumber}`;
    socket.join(newRoom);
    console.log(socket.rooms.size);
    socket.emit('Room has been created', newRoom);
    currRoomNumber++;
  });

});

io.listen(3000 | process.env.PORT);
