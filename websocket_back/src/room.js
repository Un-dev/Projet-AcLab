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
        this.store.clients.push({ id: this.socker.id, username: this.username, isReady: false });
        this.socket.username = this.username;
        this.socker.emit('[SUCCESS] Successfully initialised');
        console.log(`[JOIN] Client joined room ${this.roomId}`);
        return true;
      }

      console.warn(`[JOIN FAILED] Client denied join, as roomId ${this.roomId} not created`);
      this.socker.emit('Error: Create a room first!');
      return false;
    }

    if (this.action === 'create') {

      if (clients.length < 1) {
        await this.socket.join(this.roomId);
        this.store.clients = [{ id: this.socket.id, username: this.username, isReady: false }];
        this.socket.username = this.username;
        console.log(`[CREATE] Client created and joined room ${this.roomId}`);
        this.socket.emit('[SUCCESS] Successfully initialised');
        return true;
      }

      console.warn(`[CREATE FAILED] Create denied as roomId ${this.roomId} already exists`);
      this.socker.emit('Error: Room already created. Please join the room!');
      return false;
    }

  }

  showMembers () {
    this.io.to(this.roomId).emit('show-members', this.store.clients);
  }
}
