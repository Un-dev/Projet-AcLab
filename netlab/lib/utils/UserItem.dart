import 'package:flutter/material.dart';
import 'package:netlab/theme.dart';

class UserItem extends StatelessWidget {
  final String username;

  UserItem({this.username});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = buttonTheme();
    TextTheme textStyle = globalTheme().textTheme;

    return Container(
        margin: EdgeInsets.only(top: 20),
        height: 50,
        width: 290,
        color: theme.backgroundColor,
        child: Row(children: [
          Center(child: Text(this.username, style: textStyle.bodyText2))
        ]));
  }
}
