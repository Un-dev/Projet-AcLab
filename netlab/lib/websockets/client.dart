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
    socket.emit('create_room', {'username': 'toto'});
    socket.emit('show-members');
  });

  _showMembers(dynamic data) {
    print(data);
  }

  socket.on('event', (data) => print(data));
  socket.on('show-members', (data) => _showMembers(data));
  socket.onDisconnect((_) => print('disconnect'));
  socket.on('fromServer', (_) => print(_));
}
