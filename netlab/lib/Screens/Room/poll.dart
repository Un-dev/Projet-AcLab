import 'package:flutter/material.dart';
import 'package:netlab/utils/MyIcons.dart';
import 'package:netlab/theme.dart';

class Poll extends StatelessWidget {
  static const String _title = 'Vote';

  @override
  Widget build(BuildContext context) {
    const PrimaryColor = const Color(0xFF151026);
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),),
      body: CardStatelessWidget(),
    );

  }
}
Widget createAppbar(context){
  return  Container(
    height: 200.0,
    decoration: new BoxDecoration(
      color: Colors.orange,
      boxShadow: [
        new BoxShadow(blurRadius: 40.0)
      ],
      borderRadius: new BorderRadius.vertical(
          bottom: new Radius.elliptical(
              MediaQuery.of(context).size.width, 100.0)),
    ),
  );
}

class CardStatelessWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CardState();
}

class CardState extends State<CardStatelessWidget> {
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width*0.8;

    return Scaffold(
        body:
        Container(

          color: pullBackgroundColorTheme,
          child: Column(
            children: [
              /* Stack(
                children: [
                  createAppbar(context),
                ],
              ),*/
              Container(
                padding: mEdgeInsets(10.0, 10.0, 10.0, 10.0),
                child: Card(
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
                          child:
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: colorBorderContainerImg, width: borderSideContainerImg,)),
                            ),
                            padding: mEdgeInsets(0.0, 0.0, 0.0, 0.0),
                            child: SizedBox.fromSize(
                              size: pollImgSize(),
                              child:Image.network(
                                'https://cdn.pixabay.com/photo/2020/12/23/08/00/bow-lake-5854210__340.jpg',
                                fit:BoxFit.fill,
                              ),
                            ),
                          )),
                      ListTile(
                        title: Text('Star Wars', style: titleCardStyle(),textAlign: TextAlign.center),
                        //subtitle: (),
                      ),
                      Container(
                        padding: mEdgeInsets(100.0, 0.0, 0.0, 10.0),
                        child: Row(
                            children: <Widget>[
                              Text('Note générale ', style: noteCardStyle(), textAlign: TextAlign.center),
                              for (int i = 0; i < 3; i++)
                                Icon(MyIcons.star,color: starIconColorTheme,size: starIconSizeTheme,),
                              for (int i = 0; i < 2; i++)
                                Icon(MyIcons.star_border,color: starIconColorTheme,size: starIconSizeTheme,),
                            ]
                        ),
                      ),
                      Container(
                        padding: mEdgeInsets(0.0, 0.0, 0.0, 20.0),
                        width: c_width,
                        child: Text('''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ver since the 1500s, when an unknown printer took a galley of type''',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 15,),
                          maxLines: 10,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: mEdgeInsets(0, 0, 60, 0),
                    child: createButton(MyIcons.done, iconDoneColorTheme, "done-btn"),
                  ),
                  Container(
                    padding: mEdgeInsets(60, 0, 0, 0),
                    child: createButton(MyIcons.clear, iconClearColorTheme, "clear-btn"),
                  ),
                ],
              ),
            ],
          ),
        )

    );
  }
}

Widget createButton(icon, myColor, tag){
  return SizedBox(
      child: Center(
        child:FloatingActionButton(
          heroTag: tag,
          onPressed: () {},
          child: Icon(icon,color: myColor,size: sizePullButtonTheme,),
          backgroundColor: blackPollButtonTheme,
        ),
      )
  );
}

