import 'package:flutter/material.dart';

class UserItem extends StatelessWidget {
  final String username;

  UserItem({this.username});

  @override
  Widget build(BuildContext context) {
    return Container(child: Text(this.username));
  }
}
