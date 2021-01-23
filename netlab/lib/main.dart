import 'package:netlab/actions/websocket.dart';

import 'package:flutter/material.dart';
import 'Screens/app.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

void main() {
  connectAndListen();
  runApp(Netlab());
}

void connectAndListen() {
  IO.Socket socket = IO.io('http://localhost:3000',
      IO.OptionBuilder().setTransports(['websocket']).build());

  socket.onConnect((_) {
    print('connect');
    socket.emit('msg', 'test');
  });

  //When an event recieved from server, data is added to the stream
  socket.on('event', (data) => streamSocket.addResponse);
  socket.onDisconnect((_) => print('disconnect'));
}
