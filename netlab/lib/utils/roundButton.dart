import 'package:flutter/material.dart';
import 'package:netlab/theme.dart';


  Widget roundButton(icon, myColor, tag){
    return SizedBox(
        child: Center(
          child:FloatingActionButton(
            heroTag: tag,
            onPressed: () {},
            child: Icon(icon,color: myColor,size: sizePollButtonTheme,),
            backgroundColor: blackPollButtonTheme,
          ),
        )
    );
  }