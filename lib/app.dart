import 'package:animalcorssingwiki/bug/page.dart';
import 'package:animalcorssingwiki/fish/page.dart';
import 'package:animalcorssingwiki/main/page.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

Widget createApp() {
  final AbstractRoutes routes = PageRoutes(
    pages: <String, Page<Object, dynamic>>{
      'home_screen': HomeScreenPage(),
      'fish_screen': FishScreenPage(),
      'bug_screen': BugScreenPage(),
    },
  );

  return MaterialApp(
    title: 'AnimalCorssing',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: routes.buildPage('home_screen', null),
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}
