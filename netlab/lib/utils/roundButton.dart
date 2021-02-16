import 'package:flutter/material.dart';
import 'package:netlab/theme.dart';


  Widget roundButton(icon, myColor, tag, onPressed){
    return SizedBox(
        child: Center(
          child:FloatingActionButton(
            heroTag: tag,
            onPressed: onPressed,
            child: Icon(icon,color: myColor,size: sizePollButtonTheme,),
            backgroundColor: blackPollButtonTheme,
          ),
        )
    );
  }