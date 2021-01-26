import 'package:flutter/material.dart';
import 'package:netlab/utils/myIcons.dart';
class Poll extends StatelessWidget {
  static const String _title = 'Vote';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(_title)),
      body: CardStatelessWidget(),
    );
  }
}

class CardStatelessWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CardState();
}

class CardState extends State<CardStatelessWidget> {
  Widget build(BuildContext context) {
    return Scaffold(

        body: Center(
          child: Card(
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,

              children: <Widget>[
                SizedBox.fromSize(
                  size: Size(350, 300),
                  child: Image.network('https://cdn.pixabay.com/photo/2020/12/23/08/00/bow-lake-5854210__340.jpg'),
                ),

                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    createButton(MyIcons.done, Colors.green, "done-btn"),
                    createButton(MyIcons.clear, Colors.red, "clear-btn"),
                    /*FlatButton(
                      child: createButton(MyIcons.done, Colors.green),
                      //padding: EdgeInsets.fromLTRB(66.0, 10.0, 66.0, 10.0),
                      onPressed: () {
                        // To do
                      },
                    ),*/
                    /*FlatButton(
                      child: createButton(MyIcons.clear, Colors.red),
                      //padding: EdgeInsets.fromLTRB(66.0, 10.0, 66.0, 10.0),
                      onPressed: () {
                        // To do
                      },
                    ),*/
                  ],
                ),
              ],
            ),
          ),
        )

    );
  }
}

Widget createButton(icon, myColor, tag){
  return SizedBox(

        child: FloatingActionButton(
          heroTag: tag,
          onPressed: () {},
          child: Icon(icon,color: myColor,size: 35,),
          backgroundColor: Colors.black87,
        ),
      );
}
