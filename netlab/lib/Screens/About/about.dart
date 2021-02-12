import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About')),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('About'),
            Text('Welcome into Netlab, an Ac\'Lab Original project'),
            new InkWell(
                child: new Text('For more information see our repo'),
                onTap: () => launch('https://github.com/Un-dev/Netlab')),
            Text(
                'Developpers : François, Mathieu, Neel, Arthur, Daniel, Khélia'),
          ],
        ),
      ),
    );
  }
}
