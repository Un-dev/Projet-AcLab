import 'package:flutter/material.dart';
import 'package:netlab/utils/Movie.dart';
import 'package:netlab/utils/MyIcons.dart';
import 'package:netlab/theme.dart';
import 'package:netlab/utils/roundButton.dart';
import 'package:netlab/utils/customCard.dart';

class Poll extends StatelessWidget {
  final String _title = 'Vote';

  final Movie movie = new Movie(
      'Star Wars',
      'https://cdn.pixabay.com/photo/2020/12/23/08/00/bow-lake-5854210__340.jpg',
      3,
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ver since the 1500s, when an unknown printer took a galley of type');

  @override
  Widget build(BuildContext context) {
    const PrimaryColor = const Color(0xFF151026);
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: MovieCard(movie),
    );
  }
}

class MovieCard extends StatefulWidget {
  final Movie movie;

  MovieCard(this.movie);
  @override
  State<StatefulWidget> createState() => MovieCardState();
}

class MovieCardState extends State<MovieCard> {
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.8;

    return Scaffold(
        body: Container(
      color: backgroundColorTheme,
      child: Column(
        children: [
          Container(
            padding: mEdgeInsets(10.0, 10.0, 10.0, 10.0),
            child: customCard(
              c_width,
              widget.movie.image,
              widget.movie.title,
              widget.movie.description,
              widget.movie.stars,
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: mEdgeInsets(0, 0, 60, 0),
                child:
                    roundButton(MyIcons.done, iconDoneColorTheme, "done-btn"),
              ),
              Container(
                padding: mEdgeInsets(60, 0, 0, 0),
                child: roundButton(
                    MyIcons.clear, iconClearColorTheme, "clear-btn"),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}

Widget createAppbar(context) {
  return Container(
    height: 200.0,
    decoration: new BoxDecoration(
      color: Colors.orange,
      boxShadow: [new BoxShadow(blurRadius: 40.0)],
      borderRadius: new BorderRadius.vertical(
          bottom:
              new Radius.elliptical(MediaQuery.of(context).size.width, 100.0)),
    ),
  );
}
