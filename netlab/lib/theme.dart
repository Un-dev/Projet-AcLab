import 'package:flutter/material.dart';

const Color  pullBackgroundColorTheme = Color.fromRGBO(61, 69, 90, 1);
const Color  cardBackgroundColorTheme = Color.fromRGBO(0, 0, 0, 1);
const Color  starIconColorTheme = Colors.yellow;
const double starIconSizeTheme = 20;
const Color  iconDoneColorTheme = Colors.green;
const Color  iconClearColorTheme = Colors.red;
const Color  blackPollButtonTheme = Colors.black54;
const double sizePullButtonTheme = 35;
const double borderSideContainerImg = 2.0;
const Color colorBorderContainerImg=Colors.white;

Size pollImgSize(){
  return Size(400, 300);
}
EdgeInsets mEdgeInsets(double left,double top,double right,double bottom) {
  return EdgeInsets.fromLTRB(left, top, right, bottom);
}
BorderRadius cardPollBorderRadius(){
  return BorderRadius.only(
    topLeft: Radius.circular(8.0),
    topRight: Radius.circular(8.0),
  );
}
TextStyle titleCardStyle(){
  return TextStyle(color: Colors.white,fontSize: 30,);
}
TextStyle noteCardStyle(){
  return TextStyle(color: Colors.white,fontSize: 15,);
}


const Color      textfieldFillColorTheme = Color.fromRGBO(91,101,129,1);
const BorderSide textfieldFocusedOIBSTheme = BorderSide(color: Colors.white);
const BorderSide textfieldBorderOIBSTheme = BorderSide(color: Colors.white);
BorderRadius textfieldFocusedOIBRTheme(){
  return BorderRadius.circular(25.7);
}
BorderRadius textfieldBorderOIBRTheme(){
  return BorderRadius.circular(10.0);
}

ThemeData globalTheme() {
  return ThemeData(
      scaffoldBackgroundColor: Color.fromRGBO(61, 69, 90, 1.0),
      textTheme: TextTheme(
        bodyText2:
            TextStyle(color: Colors.white, fontFamily: 'Nunito', fontSize: 22),
      ));
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

