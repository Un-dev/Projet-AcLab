import Room from './room.js';

const server = require('http').createServer();
const io = require('socket.io')(server);

let roomId = 1000;

function initServer () {
  io.on('connection', (socket) => {
    console.log(`Connection established with ${socket.id} id`);

    socket.on('create_room', ({ username }) => {
      const roomOptions = { io, socket, roomId, username, action: 'create' };
      const room = new Room(roomOptions);
      room.init();
      room.showMembers();
      roomId++;
    });
  });

  io.listen(3000 | process.env.PORT);

  return io;

}

export default initServer;
