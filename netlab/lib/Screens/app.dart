import 'package:flutter/material.dart';
import 'Home/home.dart';
import 'About/about.dart';

class Netlab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      onGenerateRoute: (settings) {},
    );
  }
}
