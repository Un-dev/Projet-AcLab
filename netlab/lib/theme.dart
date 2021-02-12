import 'package:flutter/material.dart';

ThemeData globalTheme() {
  return ThemeData(
      scaffoldBackgroundColor: Color.fromRGBO(61, 69, 90, 1.0),
      // textTheme: Typography(platform: TargetPlatform.android).white,
      textTheme: TextTheme(
        bodyText2:
            TextStyle(color: Colors.white, fontFamily: 'Nunito', fontSize: 22),
      ));
}

ThemeData buttonTheme() {
  return ThemeData(
    backgroundColor: Color.fromRGBO(91, 101, 129, 1.0),
  );
}

ThemeData redButtonTheme() {
  return ThemeData(
    backgroundColor: Color.fromRGBO(229, 10, 20, 1.0),
  );
}

TextStyle appTitleTheme() {
  return TextStyle(
      color: Color.fromRGBO(229, 10, 20, 1.0),
      fontSize: 60,
      fontFamily: 'Bebasneue');
}

TextStyle titleTheme() {
  return TextStyle(fontSize: 60, fontFamily: 'Bebasneue');
}
