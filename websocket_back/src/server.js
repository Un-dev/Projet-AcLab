import Room from './room.js';

const server = require('http').createServer();
const io = require('socket.io')(server);

let roomId = 1000;

function initServer () {
  io.on('connection', (socket) => {
    console.log(`Connection established with ${socket.id} id`);
    let room;
    socket.on('create_room', ({ username }) => {
      const roomOptions = { io, socket, roomId, username, action: 'create' };
      room = new Room(roomOptions);
      room.init();
      roomId++;
    });

    socket.on('show_members', () => {
      room.showMembers();
    });

    socket.on('set_player_ready', () => {
      room.setPlayerReady();
    });

    socket.on('launch_game', () => {
      room.launchGame();
    });
  });

  io.listen(3000 | process.env.PORT);

  return io;

}

export default initServer;
