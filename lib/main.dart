import 'package:flutter/material.dart';
import 'package:flutter_routing/route_generator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Initially display FirstPage
      // home: FirstPage(),
      // Initially display FirstPage
      initialRoute: RoutePage.HOME_PAGE,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

