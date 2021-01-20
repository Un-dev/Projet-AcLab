import 'package:flutter/material.dart';
import 'package:netlab/utils/customButton.dart';
//import 'package:web_socket_channel/io.dart';

class CreateRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CreateRoom')),
      body: Center(
        child: CustomButton(
          label: 'Create',
          //onPressed: createRoom(context),
        ),
      ),
    );
  }
}

/*createRoom(BuildContext context) {
  final channel = IOWebSocketChannel.connect("ws://localhost:8181");

  Navigator.of(context).pushNamed('/room');
  return idRoom;
}*/
