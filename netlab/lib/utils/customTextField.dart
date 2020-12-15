import 'package:flutter/material.dart';
import 'package:flutter_color/flutter_color.dart';


Widget textfieldWidget(textStyle, codeController, mKeyboardtype,placeholder) {
  return Column(
    children: [
      TextField(
        controller: codeController,
        decoration: InputDecoration(
            hintText: placeholder,
            labelStyle: textStyle,
            filled: true,
            fillColor: Color.fromRGBO(91,101,129,1),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(25.7),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10.0),
            )
        ),
        keyboardType: mKeyboardtype,
      ),
    ],
  );

}

