import 'package:flutter/material.dart';
import 'package:weshoping/screens/authenticate/homeauth.dart';
import 'package:weshoping/screens/authenticate/login.dart';
import 'package:weshoping/screens/welcome.dart';


class Routes {
  static Map<String, WidgetBuilder> getRoutes() {
    return <String, WidgetBuilder>{
      '/': (context) => WelcomeScreen(),
      '/homeauth': (context) => HomeauthScreen(),
      '/login': (context) => LoginScreen(),
    };
  }
}