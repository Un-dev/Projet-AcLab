import 'package:flutter/material.dart';

ThemeData globalTheme() {
  return ThemeData(
      scaffoldBackgroundColor: Color.fromRGBO(61, 69, 90, 1.0),
      // textTheme: Typography(platform: TargetPlatform.android).white,
      textTheme: TextTheme(
        bodyText2: TextStyle(color: Colors.white, fontFamily: 'Nunito'),
      ));
}

ThemeData buttonTheme() {
  return ThemeData(
    backgroundColor: Color.fromRGBO(91, 101, 129, 1.0),
  );
}

TextStyle titleTheme() {
  return TextStyle(
      color: Color.fromRGBO(229, 10, 20, 1.0),
      fontSize: 60,
      fontFamily: 'Bebasneue');
}
