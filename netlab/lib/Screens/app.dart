import 'package:flutter/material.dart';
import 'Home/home.dart';

class Netlab extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<Netlab> {
  @override
  void initState() {
    super.initState();

    setState(() {});
  }

  bool onPopPage(Route<dynamic> route, dynamic result) {
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Netlab',
        theme: ThemeData.light(),
        home: Navigator(
          onPopPage: this.onPopPage,
          pages: [MaterialPage(key: ValueKey('home'), child: Home())],
        ));
  }
}
