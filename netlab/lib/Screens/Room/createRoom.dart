import 'package:flutter/material.dart';
import 'package:netlab/actions/ioSocket.dart';

class CreateRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Create Room')), body: CreateRoomForm());
  }
}

class CreateRoomForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CreateRoomFormState();
}

class _CreateRoomFormState extends State<CreateRoomForm> {
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
                  hintText: 'Username',
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
                  socket.emit('create_room', {'username': codeController.text});
                },
                child: Text(
                  'Create',
                  textScaleFactor: 1.5,
                )),
            Text(result),
          ],
        ),
      ),
    );
  }
}
