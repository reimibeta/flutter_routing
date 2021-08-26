import 'package:flutter/material.dart';
import 'package:flutter_routing/route_generator.dart';

class SecondPage extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  final String data;

  SecondPage({
    Key? key,
    required this.data,
  }) : super(key: key);

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
              'Second Page',
              style: TextStyle(fontSize: 50),
            ),
            Text(
              data,
              style: TextStyle(fontSize: 20),
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
