
import 'package:flutter/material.dart';

Widget myLayoutWidget(result,codeController,context,setState) {
  return Column(
    children: [
      RaisedButton(
          color: Color.fromRGBO(229,10,20,1),
          textColor: Theme.of(context).primaryColorLight,
          onPressed: () {
            setState(() {
              result = codeController.text;
            });
          },
          child: Text(
            'Join',
            textScaleFactor: 1.5,
          ),

      ),
    ],
  );

}