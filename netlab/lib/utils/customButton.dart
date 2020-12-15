import 'package:flutter/material.dart';
import 'package:netlab/theme.dart';


class CustomButton extends StatelessWidget {
  final ThemeData theme = buttonTheme();

  final String label;
  final onPressed;
  CustomButton({this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Center(
        child: Text(label),
      ),
      onPressed: onPressed,
      color: theme.backgroundColor,
      textColor: Color.fromRGBO(255, 255, 255, 1.0),
    );
  }
}



