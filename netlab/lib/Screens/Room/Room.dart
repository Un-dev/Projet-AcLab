import 'package:flutter/material.dart';

import 'package:netlab/actions/ioSocket.dart';
import 'package:netlab/theme.dart';
import 'package:netlab/utils/UserItem.dart';
import 'package:netlab/utils/customButton.dart';

class Room extends StatefulWidget {
  final int idRoom;
  List<String> users = ['Utilisateurs', 'Par', 'Défaut'];
  Room({this.idRoom, this.users});

  @override
  State<StatefulWidget> createState() => _RoomState();
}

class _RoomState extends State<Room> {
  _RoomState();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Room')),
      body: Center(
        child: Column(
          children: renderUsers(widget.users, widget.idRoom),
        ),
      ),
    );
  }

  List<Widget> renderUsers(List<String> users, int idRoom) {
    List<Widget> res = [
      Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            idRoom.toString(),
            style: titleTheme(),
          ))
    ];

    for (var i = 0; i < users.length; i++) {
      res.add(UserItem(username: users[i]));
    }
    res.add(CustomButton(
        label: 'start',
        onPressed: () {
          socket.emit('launch_game');
        },
        buttonColor: 'red'));
    return res;
  }
}
