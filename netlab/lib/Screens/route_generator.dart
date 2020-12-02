import 'package:flutter/material.dart';
import 'package:netlab/Screens/Home/home.dart';
import 'app.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Home());
      case '/about':
        return MaterialPageRoute(builder: (_) => About());
    }
  }
}
