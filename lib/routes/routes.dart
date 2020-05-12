import 'package:flutter/material.dart';
import 'package:weshoping/screens/authenticate/homeauth.dart';
import 'package:weshoping/screens/authenticate/login.dart';
import 'package:weshoping/screens/authenticate/signup.dart';
import 'package:weshoping/screens/favoritos.dart';
import 'package:weshoping/screens/feeds-noticias.dart';
import 'package:weshoping/screens/home-maps.dart';
import 'package:weshoping/screens/minhas-compras.dart';
import 'package:weshoping/screens/pedidos.dart';
import 'package:weshoping/screens/welcome.dart';


class Routes {
  static Map<String, WidgetBuilder> getRoutes() {
    return <String, WidgetBuilder>{
      '/': (context) => WelcomeScreen(),
      '/homeauth': (context) => HomeauthScreen(),
      '/login': (context) => LoginScreen(),
      '/signup': (context) => SignupScreen(),
      '/homemap': (context) => HomeMapsScreen(),
      '/feedsnoticias': (context) => FeedsNoticiasScreens(),
      '/minhascompras': (context) => MinhasComprasScreens(),
      '/pedidos': (context) => PedidosScreens(),
      '/favoritos': (context) => FavoritosScreens(),
      
      
    };
  }
}