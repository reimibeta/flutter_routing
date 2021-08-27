import 'package:flutter/material.dart';
import 'package:flutter_routing/pages/home/bloc_home.dart';
import 'package:flutter_routing/provider/bloc_provider.dart';

import '../../route_generator.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bloc = BlocHomePage();
    return BlocProvider(
        bloc: bloc,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Routing App'),
          ),
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'Home Page',
                  style: TextStyle(fontSize: 50),
                ),
                Text(
                  "this is home page.",
                  style: TextStyle(fontSize: 20),
                ),
                ElevatedButton(
                  child: Text('Go to first'),
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(RoutePage.FIRST_PAGE, arguments: 10);
                  },
                ),
                ElevatedButton(
                  child: Text('Go to second'),
                  onPressed: () {
                    Navigator.of(context).pushNamed(RoutePage.SECOND_PAGE,
                        arguments: 'this is second page');
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
