import 'package:flutter/material.dart';
import 'package:netlab/theme.dart';
import 'package:netlab/utils/grade.dart';

Widget customCard(
    cTextWidth, cardImg, movieTitleText, movieDesciptionText, stars) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    color: cardBackgroundColorTheme,
    child: Column(
      //mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
            borderRadius: cardPollBorderRadius(),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                  color: colorBorderContainerImg,
                  width: borderSideContainerImg,
                )),
              ),
              padding: mEdgeInsets(0.0, 0.0, 0.0, 0.0),
              child: SizedBox.fromSize(
                size: pollImgSize(),
                child: Image.network(
                  cardImg,
                  fit: BoxFit.fill,
                ),
              ),
            )),
        ListTile(
          title: Text(movieTitleText,
              style: titleCardStyle(), textAlign: TextAlign.center),
          //subtitle: (),
        ),
        grade(stars),
        Container(
          padding: mEdgeInsets(0.0, 0.0, 0.0, 20.0),
          width: cTextWidth,
          child: Text(
            movieDesciptionText,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
            maxLines: 10,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    ),
  );
}
