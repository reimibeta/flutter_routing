import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_routing/route_generator.dart';
import 'package:flutter_routing/themes/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.dark,
    statusBarColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.light,
    systemNavigationBarColor: Colors.black,
  ));

  // Set orientation
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  // run app
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Store',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      // theme: themeProvider.themeMode == ThemeMode.dark
      //     ? CustomTheme.darkTheme
      //     : CustomTheme.lightTheme,
      theme: CustomTheme.lightTheme,
      // Initially display FirstPage
      // home: FirstPage(),
      // Initially display FirstPage
      // initialRoute: RoutePage.HOME_PAGE,
      initialRoute: RoutePage.TAB_BAR,
      // initialRoute: RoutePage.LOGIN_PAGE,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

