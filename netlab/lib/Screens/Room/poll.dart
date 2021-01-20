import 'package:flutter/material.dart';
class Poll extends StatelessWidget {
  static const String _title = 'Vote';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: CardStatelessWidget(),
      ),
    );
  }
}

class CardStatelessWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CardState();
}

class CardState extends State<CardStatelessWidget> {
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.network('https://cdn.pixabay.com/photo/2020/12/23/08/00/bow-lake-5854210__340.jpg'),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      onPressed: () {
                      },
                      child: const Text('No'),
                    ),
                    FlatButton(
                      onPressed: () {
                      },
                      child: const Text('Yes'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )

    );
  }
}
