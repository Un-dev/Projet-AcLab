import 'package:flutter/material.dart';
import 'package:flutter_color/flutter_color.dart';

class JoinRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Join Room')),
      body: JoinRoomForm()
    );
  }
}

class JoinRoomForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _JoinRoomFormState();
}

class _JoinRoomFormState extends  State<JoinRoomForm> {
  String result = '';
  TextEditingController codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return Scaffold(
      body:
        Container(
          color: HexColor('#3D455A'),
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: codeController,
              decoration: InputDecoration(
                  hintText: 'Enter room code',
                  labelStyle: textStyle,
                  filled: true,
                  fillColor: HexColor('#5B6581'),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10.0),
                  )

              ),
              keyboardType: TextInputType.number,
            ),

            RaisedButton(
                color: HexColor('#E50A14'),
                textColor: Theme.of(context).primaryColorLight,
                onPressed: () {
                  setState(() {
                    result = codeController.text;
                  });
                },
                child: Text(
                  'Join',
                  textScaleFactor: 1.5,
                )
            ),
            Text(result),
          ],
        ),
      ),
    );
  }

}

