import 'package:flutter/material.dart';
import 'package:flutter_routing/navigation/tabbar.dart';
import 'package:flutter_routing/pages/first/first_page.dart';
import 'package:flutter_routing/pages/home/home_page.dart';
import 'package:flutter_routing/pages/login/login.dart';
import 'package:flutter_routing/pages/second/second_page.dart';
import 'package:flutter_routing/pages/tab_nav.dart';

import 'main.dart';

class RoutePage {
  // home page

  // second page
  static const HOME_PAGE = "/";
  static const FIRST_PAGE = "/first";
  static const SECOND_PAGE = "/second";
  static const TAB_BAR = "/tabbar";
  static const LOGIN_PAGE = "/login";
}

// class RouteValidate {
//   static MaterialPageRoute? validator({page, args}) {
//     if (args is String) {
//       return MaterialPageRoute(
//         builder: (_) => page(
//           data: args,
//         ),
//       );
//     }
//   }
// }

// class RouteGuard<T, E> {
//   static MaterialPageRoute guard<T>({
//     required Function(T) onLogged,
//     // Function? onNotLogged,
//     required Function onFailed,
//   }) {
//     // do code to check if user login by preference
//     bool isLogin = true;
//     if (isLogin) {
//       return onLogged();
//     } else {
//       return onFailed();
//     }
//     // guard user
//     // if (onGuard != null)
//     //   onGuard(isLogin);
//   }
// }

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;
    // bool login = false;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case "/tabbar":
        // return RouteGuard.guard<TabNav, Login>(
        //     onLogged: TabNav(), onFailed: Login()
        //     //   onLogged: (){
        //     //     return MaterialPageRoute(builder: (_) => TabNav());
        //     //   }
        //     //   onFailed: (){
        //     //   return MaterialPageRoute(builder: (_) => Login());
        //     // }
        //     );
        return MaterialPageRoute(builder: (_) => TabNav());
      case RoutePage.LOGIN_PAGE:
        return MaterialPageRoute(builder: (_) => Login());
      case RoutePage.FIRST_PAGE:
        if (args is int) {
          return MaterialPageRoute(
              builder: (_) => FirstPage(
                    data: 10,
                  ));
        }
        return _errorRoute();
      case RoutePage.SECOND_PAGE:
        // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => SecondPage(
              data: args,
            ),
          );
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
