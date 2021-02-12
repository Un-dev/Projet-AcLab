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
    socket.emit('show_members');
    socket.emit('set_player_ready');
    socket.emit('show_members');
  });

  _showInfos(dynamic data) {
    print(data);
  }

  socket.on('event', (data) => print(data));
  socket.on('create_room', (data) => _showInfos(data));
  socket.on('show_members', (data) => _showInfos(data));
  socket.on('set_player_ready', (data) => _showInfos(data));
  socket.onDisconnect((_) => print('disconnect'));
  socket.on('fromServer', (_) => print(_));
}
