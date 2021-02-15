import 'package:flutter/material.dart';

import 'package:netlab/actions/ioSocket.dart';
import 'package:flutter_color/flutter_color.dart';
import 'package:netlab/theme.dart';
import 'package:netlab/utils/customButton.dart';
import 'package:netlab/utils/customTextField.dart';


class JoinRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Join Room')),
      body: CustomForm(),
    );
  }
}

class CustomForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FormState();
}


class FormState extends State<CustomForm> {

  String result = '';
  TextEditingController codeController = TextEditingController();
  TextEditingController nameController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme
        .of(context)
        .textTheme
        .title;
    return Scaffold(
      body:
      Container(
        color: backgroundColorTheme,
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            textfieldWidget(textStyle, nameController, TextInputType.text,"Enter your name"),
            SizedBox(height: spaceBetweenTexfield),
            textfieldWidget(textStyle, codeController, TextInputType.number,"Enter room code"),
            SizedBox(height: spaceBetweenTB),
            CustomButton(
              label: 'join',
              onPressed: () {
                setState(() {
                  result = codeController.text;
                });
              },
            ),
            Text(result),
          ],
        ),
      ),
    );
  }
  
}

