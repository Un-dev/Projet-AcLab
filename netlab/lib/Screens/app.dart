import 'package:flutter/material.dart';
import 'package:netlab/Screens/route_generator.dart';

import '../theme.dart';

final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

class Netlab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = globalTheme();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      navigatorKey: navigatorKey,
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
