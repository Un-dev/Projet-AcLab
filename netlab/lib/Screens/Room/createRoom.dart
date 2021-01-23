import 'package:flutter/material.dart';
import 'package:netlab/Arguments/RoomArguments.dart';
import 'package:netlab/utils/customButton.dart';

class CreateRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CreateRoom')),
      body: Center(
        child: CustomButton(
          label: 'Create',
          onPressed: () => createRoom(context),
        ),
      ),
    );
  }
}

createRoom(BuildContext context) {
  final int idRoom = 53;
  Navigator.of(context).pushNamed('/room', arguments: RoomArguments(idRoom));
  return idRoom;
}
