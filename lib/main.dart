import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weshoping/routes/routes.dart';
import 'package:weshoping/theme/theme.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weshoping',
      initialRoute: '/',
      routes: Routes.getRoutes(),
      theme: AppTheme.apptheme.copyWith(
        textTheme: GoogleFonts.muliTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}

