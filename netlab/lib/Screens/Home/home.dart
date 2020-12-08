import 'package:flutter/material.dart';
import 'package:netlab/theme.dart';
import 'package:netlab/utils/customButton.dart';

class Home extends StatelessWidget {
  final ThemeData theme = globalTheme();

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
                style: titleTheme(),
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
