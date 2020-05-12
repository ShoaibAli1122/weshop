import 'package:flutter/material.dart';

class FavoritosScreens extends StatefulWidget {
  @override
  _FavoritosScreensState createState() => _FavoritosScreensState();
}

class _FavoritosScreensState extends State<FavoritosScreens> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('Favoritos'),
        leading: Padding(
          padding: EdgeInsets.only(left: 10),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
            ),
            color: Theme.of(context).primaryColor,
            onPressed: () async {
              Navigator.pop(context);
            },
          ),
        ),
      )
      
    );
  }
}