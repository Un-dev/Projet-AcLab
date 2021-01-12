import 'package:flutter/material.dart';

class JoinRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Join Room')), body: JoinRoomForm());
  }
}

class JoinRoomForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _JoinRoomFormState();
}

class _JoinRoomFormState extends State<JoinRoomForm> {
  String result = '';
  TextEditingController codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(61, 69, 90, 1.0),
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: codeController,
              decoration: InputDecoration(
                  hintText: 'Enter room code',
                  labelStyle: textStyle,
                  filled: true,
                  fillColor: Color.fromRGBO(91, 101, 129, 1.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10.0),
                  )),
              keyboardType: TextInputType.number,
            ),
            RaisedButton(
                color: Color.fromRGBO(229, 10, 20, 1.0),
                textColor: Theme.of(context).primaryColorLight,
                onPressed: () {
                  setState(() {
                    result = codeController.text;
                  });
                },
                child: Text(
                  'Join',
                  textScaleFactor: 1.5,
                )),
            Text(result),
          ],
        ),
      ),
    );
  }
}
