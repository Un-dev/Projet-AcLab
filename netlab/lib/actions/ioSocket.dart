import 'package:socket_io_client/socket_io_client.dart' as IO;

import 'StreamSocket.dart';

IO.Socket socket;

void connectAndListen() {
  socket = IO.io('http://localhost:3000',
      IO.OptionBuilder().setTransports(['websocket']).build());

  socket.onConnect((_) {
    print('connect');
    socket.emit('msg', 'test');
  });

  //When an event recieved from server, data is added to the stream
  socket.on('event', (data) => streamSocket.addResponse);
  socket.onDisconnect((_) => print('disconnect'));
}

IO.Socket getSocket() {
  return socket;
}
