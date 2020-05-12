import 'package:flutter/material.dart';

class MinhasComprasScreens extends StatefulWidget {
  @override
  _MinhasComprasScreensState createState() => _MinhasComprasScreensState();
}

class _MinhasComprasScreensState extends State<MinhasComprasScreens> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('Minhas compras'),
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