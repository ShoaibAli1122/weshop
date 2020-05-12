import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  void initState() {
    super.initState();
    _nextScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterLogo(
          size: 300,
        ),
      ),
    );
  }

  void _nextScreen() async {
    Future.delayed(
      Duration(seconds: 3),
      () {
        // Navigator.pushNamed(context, '/homemap');
        Navigator.pushNamed(context, '/homeauth');
      }
    );
  }
}