import 'package:flutter/material.dart';

import 'package:netlab/actions/ioSocket.dart';
import 'package:flutter_color/flutter_color.dart';
import 'package:netlab/theme.dart';
import 'package:netlab/utils/customButton.dart';
import 'package:netlab/utils/customTextField.dart';


class JoinRoom extends StatelessWidget {
  static const String _title = 'Join Room';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title)),
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
  String result1 = '';
  TextEditingController codeController = TextEditingController();
  TextEditingController usernameController = TextEditingController();


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
            textfieldWidget(textStyle, usernameController, TextInputType.text,"Enter your name"),
            SizedBox(height: spaceBetweenTexfield),
            textfieldWidget(textStyle, codeController, TextInputType.number,"Enter room code"),
            SizedBox(height: spaceBetweenTB),

            CustomButton(
              label: 'join',
              onPressed: () {
                setState(() {
                  result = codeController.text;
                  result1 = usernameController.text;
                });
              },

            ),
            Text(result),
            Text(result1),
          ],
        ),
      ),
    );
  }

  bool check_room(idroom, idroomtest){
    return idroom == idroomtest? true: false;
  }
  
}

