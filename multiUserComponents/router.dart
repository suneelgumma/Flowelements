import 'package:flutter/material.dart';
import '../pages/all.dart';

const String LOGIN_MODE = "/";
const String REGISTER = "/register";
const String LOGIN = "/login";
const String HOME = "/home";
const String GALLERY = "/gallery";
const String SEVAS = "/seava";
const String FEEDBACK = "/feedBack";

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    final args = routeSettings.arguments;

    switch (routeSettings.name) {
      case LOGIN_MODE:
        return MaterialPageRoute(builder: (context) => LoginModes());
        break;
      case REGISTER:
        return MaterialPageRoute(builder: (context) => Register());
        break;
      case LOGIN:
        return MaterialPageRoute(builder: (context) => Login());
        break;
      case HOME:
        return MaterialPageRoute(
            builder: (context) => HomePage(
                  data: args,
                ));
        break;
      case GALLERY:
        return MaterialPageRoute(
            builder: (context) => Gallery(
                  data: args,
                ));
        break;
      case SEVAS:
        return MaterialPageRoute(
            builder: (context) => Sevas(
                  data: args,
                ));
        break;
      case FEEDBACK:
        return MaterialPageRoute(
            builder: (context) => FeedBack(
                  data: args,
                ));
        break;
      default:
        return MaterialPageRoute(
            builder: (context) => FeedBack(
                  data: args,
                ));
        break;
    }
  }
}
