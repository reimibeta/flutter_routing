import 'package:flutter/material.dart';
import 'package:flutter_routing/route_generator.dart';

class FirstPage extends StatelessWidget {
  final int data;

  FirstPage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'First Page',
              style: TextStyle(fontSize: 50),
            ),
            ElevatedButton(
              child: Text('Go to second'),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  RoutePage.SECOND_PAGE,
                  arguments: 'Hello there from the first page!',
                );
              },
            ),
            ElevatedButton(
              child: Text('Go to home'),
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(RoutePage.HOME_PAGE, (Route<dynamic> route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
