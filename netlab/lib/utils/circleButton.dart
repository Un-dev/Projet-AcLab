import 'package:flutter/material.dart';
import './myIcons.dart';

class circleButton extends StatelessWidget {
  final String label;
  final onPressed;
  circleButton({this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: new SizedBox(
            child: FloatingActionButton(
              backgroundColor: Colors.red,
              child: Icon(MyIcons.done, color: Colors.white),
              onPressed: () {
                print("Cliked");
              },)
        ));
  }
}
