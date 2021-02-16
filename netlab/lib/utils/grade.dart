import 'package:flutter/widgets.dart';
import 'package:netlab/utils/MyIcons.dart';
import 'package:netlab/theme.dart';

Widget grade(gradeTile,starsNumberChecked) {
  return Container(
    padding: mEdgeInsets(100.0, 0.0, 0.0, 10.0),
      child: Row(
          children: <Widget>[
            Text(gradeTile, style: noteCardStyle, textAlign: TextAlign.center),
            for (int i = 0; i < starsNumberChecked; i++)
              Icon(MyIcons.star,color: starIconColorTheme,size: starIconSizeTheme,),
            for (int i = 0; i < totalStarsNumber-starsNumberChecked; i++)
              Icon(MyIcons.star_border,color: starIconColorTheme,size: starIconSizeTheme,),
          ]
      ),
    );
}
