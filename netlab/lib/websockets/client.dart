import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:socket_io_client/socket_io_client.dart';

void main() {
  // Dart client
  IO.Socket socket = IO.io(
      'http://0.0.0.0:3000',
      OptionBuilder().setTransports(['websocket']) // for Flutter or Dart VM
          .build());
  socket.onConnect((_) {
    print(socket.id);
  });
  socket.on('event', (data) => print(data));
  socket.onDisconnect((_) => print('disconnect'));
  socket.on('fromServer', (_) => print(_));
}
