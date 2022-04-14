import 'package:flutter/material.dart';
import 'signup1.dart';
import 'signUp.dart';
import 'login.dart';
import 'signup1.dart';
import 'forgot.dart';
import 'send.dart';
import 'reset.dart';
import 'resetsucses.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // jika ingin mengirim argument
    // final args = settings.arguments;

    switch (settings.name) {
      case '/signup':
        return MaterialPageRoute(builder: (_) => SignUp());
      case '/login':
        return MaterialPageRoute(builder: (_) => Login());
      case '/signup1':
        return MaterialPageRoute(builder: (_) => SignUp1());
      case '/Forgot':
        return MaterialPageRoute(builder: (_) => Forgot());
      case '/send':
        return MaterialPageRoute(builder: (_) => Send());
      case '/reset':
        return MaterialPageRoute(builder: (_) => Reset());
      case '/resetsucses':
        return MaterialPageRoute(builder: (_) => Resetpwd());

      // return MaterialPageRoute(builder: (_) => AboutPage(args));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text('Error page')),
      );
    });
  }
}
