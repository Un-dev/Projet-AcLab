import 'package:netlab/Arguments/RoomArguments.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:netlab/Screens/app.dart';

import 'StreamSocket.dart';

IO.Socket socket;

void connectAndListen() {
  socket = IO.io(
      'http://localhost:3000',
      IO.OptionBuilder()
          .setTransports(['websocket'])
          .disableAutoConnect()
          .build());

  socket.connect();

  socket.onConnect((_) {
    print('connect');
    socket.emit('msg', 'test');
  });

  //When an event recieved from server, data is added to the stream
  socket.on('event', (data) => streamSocket.addResponse);
  socket.on('create_room', (data) {
    print(data);
    print(data[1]["roomID"]);
    print(data[1]["username"]);

    navigatorKey.currentState.pushNamed('/room',
        arguments: RoomArguments(data[1]["roomID"], data[1]["username"]));
  });
  socket.on('nom du truc', (data) {
    //TODO
  })
  socket.onDisconnect((_) => print('disconnect'));
}

IO.Socket getSocket() {
  return socket;
}
