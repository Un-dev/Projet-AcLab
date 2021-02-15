import 'package:flutter/material.dart';
import 'package:netlab/theme.dart';


Widget textfieldWidget(textStyle, codeController, mKeyboardtype, placeholder) {
  return Column(
    children: [
      TextField(
        controller: codeController,
        decoration: InputDecoration(
            hintText: placeholder,
            hintStyle: TextStyle(color: Colors.white,), //
            labelStyle: textStyle,
            filled: true,
            fillColor: textfieldFillColorTheme,
            focusedBorder: OutlineInputBorder(
              borderSide: textfieldFocusedOIBSTheme,
              borderRadius: textfieldFocusedOIBRTheme(),
            ),
            border: OutlineInputBorder(
              borderSide: textfieldBorderOIBSTheme,
              borderRadius: textfieldBorderOIBRTheme(),
            )
        ),
        keyboardType: mKeyboardtype,
      ),
    ],
  );



}

