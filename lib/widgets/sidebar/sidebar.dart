import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weshoping/widgets/sidebar/sidbar_items.dart';

class Sidebar extends StatefulWidget {
  Sidebar();

  @override
  _SidebarState createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      key: this._scaffoldKey,
      child: Drawer(
          child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: ListView(
          children: <Widget>[
            SafeArea(
                child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 195,
                    color: Theme.of(context).primaryColor,
                    child: Column(
                      children: [
                        
                        Container(
                          margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 20.0),
                          child: Align(
                          alignment: Alignment.centerLeft,
                          child: new Text(
                            'Bem-vindo',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                            ),
                          ))
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 5.0),
                          child: Align(
                          alignment: Alignment.centerLeft,
                          child: new Text(
                            'Entre para ver mais ofertas, suas compras, favoritos e mais.',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ))
                        ),


                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 16.0),
                          decoration: BoxDecoration(
                            color: Theme.of(context).backgroundColor,
                            border: Border.all(
                              color: Theme.of(context).primaryColor.withOpacity(0.9),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          alignment: Alignment.center,
                          child: new Row(
                            children: <Widget>[
                              new Expanded(
                                child: InkWell( 
                                  onTap: (){
                                    print('object');
                                  },
                                  child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 12.0,
                                    horizontal: 12.0,
                                  ),
                                  child: new Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      new Expanded(
                                        child: Text(
                                          "Entrar no Weshoping",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                )
                              ),
                            ],
                          ),
                        ),
                      ]
                    )
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SidebarItem(Icons.home, "Início", () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/homemap');
                  }),
                  SidebarItem(Icons.featured_play_list, "Feed de Notícias", () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/feedsnoticias');
                  }),
                  SidebarItem(Icons.business_center, "Minhas compras", () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/minhascompras');
                  }),
                  SidebarItem(Icons.shopping_basket, "Pedidos", () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/pedidos');
                  }),
                  SidebarItem(Icons.favorite, "Favoritos", () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/favoritos');
                  }),
                  Divider(
                    // thickness: 0.5,
                    color: Colors.black.withOpacity(0.1),
                    // endIndent: 38,
                    // indent: 38,
                  ),
                  SidebarItem(Icons.settings, "Configurações", () {
                     Navigator.pop(context);
                  }),
                  // SizedBox(height: 5,),
                  // Divider(
                  //   thickness: 0.5,
                  //   color: Colors.black.withOpacity(0.1),
                  //   endIndent: 38,
                  //   indent: 38,
                  // ),
                  SidebarItem(Icons.exit_to_app, "Sair", () async {
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    await prefs.setString('logout', 'true');
                    // await prefs.setString('sessionid', null);
                    //await prefs.commit();
                    Navigator.pushNamed(context, '/');
                  }),
                  SizedBox(height: 15,),
                ],
              ),
            )),
          ],
        ),
      )),
    );
  }
}
