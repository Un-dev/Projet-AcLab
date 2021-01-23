/* eslint-disable line-comment-position */
export default class Room {

  constructor (options) {
    this.io = options.io;
    this.socket = options.socket;
    this.roomId = options.roomId;
    this.username = options.username;
    this.action = options.action; // join|create
    this.store = this.io.adapter;
  }

  async init () {

    let clients;
    await this.io.in(this.roomId).clients((e, _clients) => {
      clients = _clients || console.error('[INTERNAL ERROR] Room creation failed!');
      console.log(`Connected Clients are: ${clients}`);
    });

    if (this.action === 'join') {

      if (clients.length >= 1) {
        await this.socket.join(this.roomId);
        this.store.clients.push({ id: this.socket.id, username: this.username, isReady: false });
        this.socket.username = this.username;
        this.socket.emit('join_room', '[SUCCESS] Successfully initialised');
        console.log(`[JOIN] Client joined room ${this.roomId}`);
        return true;
      }

      console.warn(`[JOIN FAILED] Client denied join, as roomId ${this.roomId} not created`);
      this.socket.emit('join_room', 'Error: Create a room first!');
      return false;
    }

    if (this.action === 'create') {

      if (clients.length < 1) {
        await this.socket.join(this.roomId);
        this.store.clients = [{ id: this.socket.id, username: this.username, isReady: false }];
        this.socket.username = this.username;
        console.log(`[CREATE] Client created and joined room ${this.roomId}`);
        this.socket.emit('create_room', '[SUCCESS] Successfully initialised');
        return true;
      }

      console.warn(`[CREATE FAILED] Create denied as roomId ${this.roomId} already exists`);
      this.socket.emit('create_room', 'Error: Room already created. Please join the room!');
      return false;
    }

  }

  showMembers () {
    this.io.to(this.roomId).emit('show_members', this.store.clients);
    console.log(`ROOM ${this.roomId} : [SHOW MEMBERS]`);
  }

  setPlayerReady () {
    const client = this.store.clients.find((client) => client.id === this.socket.id);
    client.isReady = true;
    this.socket.emit('set_player_ready', '[SUCCESS] Player is now ready');
    console.log(`[SET_PLAYER_READY] Socket ${this.socket.id} is now ready`);
  }

  setAllReady () {
    this.store.clients = this.store.clients.map((client) => {
      client.isRrady = true;
      return client;
    });
    this.io.to(this.roomId).emit('set_all_ready', this.store.clients);
    console.log('[SET_ALL_READY] Players are now all ready');
  }
}
