import 'package:flutter/material.dart';
import 'package:netlab/Arguments/RoomArguments.dart';
import 'package:netlab/actions/ioSocket.dart';
import 'package:netlab/theme.dart';
import 'package:netlab/utils/CustomButton.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Netlab',
                style: appTitleTheme(),
              ),
              CustomButton(
                label: 'Create a room',
                onPressed: () {
                  Navigator.of(context).pushNamed('/createroom');
                },
              ),
              CustomButton(
                label: 'Join a room',
                onPressed: () {
                  Navigator.of(context).pushNamed('/joinroom');
                },
              ),
              CustomButton(
                label: 'About',
                onPressed: () {
                  Navigator.of(context).pushNamed('/about');
                },
              ),
            ],
          ),
        ));
  }
}

void createRoom(BuildContext context) {
  final socket = getSocket();
  //returns an array
  socket.emit('create_room', {'username': 'toto'});
}
