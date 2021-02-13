import 'package:flutter/material.dart';

ThemeData globalTheme() {
  ThemeData globalTheme() {
    return ThemeData(
      backgroundColor: Color(0x3D455AFF),
      textTheme: TextTheme(),
      fontFamily: 'Nunito',
    );
  }

}

ThemeData buttonTheme() {
  return ThemeData(
    backgroundColor: Color(0x5B6581FF),
    accentColor: Colors.cyan[600],
    textTheme: TextTheme(
      //button: TextStyle(fontSize: 72.0),
      //headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      //bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),
  );
}

InputDecoration textfieldTemplate (textStyle){
  return InputDecoration(
      hintText: 'Enter room code',
      labelStyle: textStyle,
      filled: true,
      fillColor: Color.fromRGBO(91,101,129,1.0),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(25.7),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(10.0),
      )
  );
}

TextStyle titleTheme() {
  return TextStyle(fontSize: 60, fontFamily: 'Bebasneue');
}

Color textfieldFillColorTheme() {
  return Color.fromRGBO(91,101,129,1);
}

BorderSide textfieldFocusedOIBSTheme(){
  return BorderSide(color: Colors.white);
}

BorderRadius textfieldFocusedOIBRTheme(){
  return BorderRadius.circular(25.7);
}

BorderRadius textfieldBorderOIBSTheme(){
  return BorderRadius.circular(10.0);
}

BorderSide textfieldBorderBSTheme(){
  return BorderSide(color: Colors.white);
}
