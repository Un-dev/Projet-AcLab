export default class Room {

  constructor (options) {
    this.io = options.io;
    this.socket = options.socket;
    this.roomId = options.roomId;
    this.username = options.username;
    // join | create
    this.action = options.action;
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
        this.socket.emit('join_room', '[SUCCESS] Successfully initialised', { roomID: this.roomId });
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
        this.store.movies = [];
        this.socket.username = this.username;
        console.log(`[CREATE] Client created and joined room ${this.roomId}`);
        this.socket.emit('create_room', '[SUCCESS] Successfully initialised', { roomID: this.roomId, username: this.username });
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
    if (this._isEveryoneReady()) this.launchGame();
  }

  launchGame () {
    this._setAllReady();
    this.io.to(this.roomId).emit('launch_game', '[SUCCESS] Game has been launched');
    console.log(`[LAUNCH_GAME] game launched for room : ${this.roomId}`);
  }

  filmChosen (newMovie) {
    const movie = this.store.movies.find((movie) => movie.id === newMovie.id);
    if (movie) {
      const index = this.store.movies.findIndex(movie);
      const changedMovie = { ...movie, numbersSwiped: movie.numbersSwiped + 1 };
      const votePercentage = changedMovie.numbersSwiped / this.store.clients.length;
      if (votePercentage > 0.60) {
        this.io.to(this.roomId).emit('film_chosen', '[ENDED] Movie has been chosen', { id_movie: movie.id, is_added: false, is_finished: true, votePercentage: votePercentage });
        console.log(`[ENDED] Film has been chosen for room ${this.roomId}`);
        return;
      }
      this.store.movies[index] = changedMovie;
      this.io.to(this.roomId).emit('film_chosen', '[CONTINUE] Movie has one more vote', { id_movie: movie.id, is_added: false, is_finished: false });
      console.log(`[CONTINUE] movie has one more vote for room:  ${this.roomId}`);
      return;
    }
    this.store.movies.push(newMovie);
    this.io.to(this.roomId).emit('film_chosen', '[ADDED] Movie has been added', { id_movie: movie.id, is_added: true, is_finished: false });
    console.log(`[ADDED] movie has been added to the list for room:  ${this.roomId}`);
  }

  _setAllReady () {
    this.store.clients = this.store.clients.map((client) => {
      client.isReady = true;
      return client;
    });
    this.io.to(this.roomId).emit('set_all_ready', '[SUCCESS] All players are now ready');
    console.log('[SET_ALL_READY] Players are now all ready');
  }

  _isEveryoneReady () {
    const numbersOfReady = this.store.clients.reduce((acc, client) => {
      if (client.isReady) acc += 1;
      return acc;
    });

    return numbersOfReady === this.store.clients.length;
  }

  // TODO
  // 0. Rajouter un store (store -> this.store.xxx = ...) [{movie_id: movie_id, numbersSwiped: X}];
  // 1. 'film_chosen' => Entrée : Un id de film / Sortie : ['MSG', {is_added: true | false, is_finished: true | false}]
  // 2. Quand on detecte qu'on a 60% de personnes qui ont choisis un film on va renvoyer à tout le monde (la room) que c'est fini
  // On renvoit l'id du film ^

}
