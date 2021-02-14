import 'package:flutter/material.dart';
import 'package:netlab/theme.dart';


class CustomButton extends StatelessWidget {
  final String label;
  final onPressed;
  final String buttonColor;

  CustomButton({this.label, this.onPressed, this.buttonColor});

  @override
  Widget build(BuildContext context) {
    ThemeData theme;
    double height;
    double width;
    if (buttonColor == "red") {
      height = 50;
      width = 100;
      theme = redButtonTheme();
    } else {
      height = 50;
      width = 290;
      theme = buttonTheme();
    }

    return RaisedButton(
      child: Center(
        child: Text(label),
      ),
      onPressed: onPressed,
      // height: height,
      // Width: width,
      color: theme.backgroundColor,
      textColor: Color.fromRGBO(255, 255, 255, 1.0),
    );
  }
}



