import 'package:flutter/material.dart';
import 'package:netlab/actions/ioSocket.dart';
import 'package:netlab/utils/customButton.dart';
import 'package:netlab/theme.dart';
import 'package:netlab/utils/customTextField.dart';

class CreateRoom extends StatelessWidget {
  static const String _title = 'Create Room';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(_title)), body: CreateRoomForm());
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
        color: backgroundColorTheme,
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            textfieldWidget(textStyle,codeController,TextInputType.name,'Username'),
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
