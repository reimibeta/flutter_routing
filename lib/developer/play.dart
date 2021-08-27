import 'package:flutter_routing/themes/theme.dart';
import 'package:flutter_routing/themes/themeGuide.dart';
import 'package:flutter/material.dart';

class Play extends StatelessWidget {
  const Play();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Play'),
        leading: const Icon(Icons.arrow_back),
        actions: const <Widget>[
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: _iconButton,
          )
        ],
      ),
      body: SizedBox.expand(
        child: SingleChildScrollView(
          padding: ThemeGuide.padding16,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: _login,
                child: Text(
                  'Login',
                  style: Theme.of(context).textTheme.button,
                ),
              ),
              TextFormField(
                decoration:
                    const InputDecoration(hintText: 'Hello this is hint text'),
              ),
              const OutlineButton(
                highlightElevation: 10,
                color: Colors.red,
                onPressed: _login,
                child: Text('Outline Button'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static void _login() {
    print('Do someting');
  }

  static void _iconButton() {
    print('Do something1');
  }
}
