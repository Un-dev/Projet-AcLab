import 'package:flutter/material.dart';
import 'package:netlab/theme.dart';


Widget textfieldWidget(textStyle, codeController, mKeyboardtype, placeholder) {
  return Column(
    children: [
      TextField(
        //Style: Colors.blue,
        controller: codeController,
        decoration: InputDecoration(
            hintText: placeholder,
            hintStyle: titleTheme(),
            labelStyle: textStyle,
            filled: true,
            fillColor: textfieldFillColorTheme(),
            focusedBorder: OutlineInputBorder(
              borderSide: textfieldFocusedOIBSTheme(),
              borderRadius: textfieldFocusedOIBRTheme(),
            ),
            border: OutlineInputBorder(
              borderSide: textfieldBorderOIBSTheme(),
              borderRadius: textfieldBorderOIBRTheme(),
            )
        ),
        keyboardType: mKeyboardtype,
      ),
    ],
  );


}

