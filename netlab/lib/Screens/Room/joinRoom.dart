import 'package:flutter/material.dart';
import 'package:flutter_color/flutter_color.dart';
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

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme
        .of(context)
        .textTheme
        .title;
    return Scaffold(
      body:
      Container(
        color: Color.fromRGBO(61, 69, 90, 1),
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            textfieldWidget(textStyle, codeController, TextInputType.number,"Enter room code"),
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