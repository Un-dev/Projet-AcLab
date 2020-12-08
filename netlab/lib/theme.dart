import 'package:flutter/material.dart';

ThemeData globalTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Color.fromRGBO(61, 69, 90, 1.0),
    textTheme: Typography(platform: TargetPlatform.android).white,
  );
}

ThemeData buttonTheme() {
  return ThemeData(
    backgroundColor: Color.fromRGBO(91, 101, 129, 1.0),
    width: 100,
  );
}

ThemeData titleTheme() {
  //todo
  return ThemeData();
}
