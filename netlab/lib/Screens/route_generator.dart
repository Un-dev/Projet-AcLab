import 'package:flutter/material.dart';
import 'package:netlab/Arguments/RoomArguments.dart';
import 'package:netlab/Screens/About/about.dart';
import 'package:netlab/Screens/Home/home.dart';
import 'package:netlab/Screens/Room/Room.dart';
import 'package:netlab/Screens/Room/joinRoom.dart';
import 'Room/createRoom.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Home());
      case '/about':
        return MaterialPageRoute(builder: (_) => About());
      case '/joinroom':
        return MaterialPageRoute(builder: (_) => JoinRoom());
      case '/createroom':
        return MaterialPageRoute(builder: (_) => CreateRoom());
      case '/room':
        return MaterialPageRoute(builder: (BuildContext context) {
          RoomArguments arguments = args;
          return Room(idRoom: arguments.idRoom, users: [arguments.users]);
        });
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
