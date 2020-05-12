import 'package:flutter/material.dart';
import 'package:weshoping/models/Tabs.dart';

class PedidosScreens extends StatefulWidget {
  @override
  _PedidosScreensState createState() => _PedidosScreensState();
}

class _PedidosScreensState extends State<PedidosScreens> with SingleTickerProviderStateMixin  {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  MyTabs _myHandler;
  TabController _controller;

  final List<MyTabs> _tabs = [
    new MyTabs(
      title: "Aguardando",
    ),
    new MyTabs(
      title: "Enviados",
    ),
    new MyTabs(
      title: "Cancelados",
    ),
  ];

  int page;

  @override
  void initState() {
    page = 0;
    _myHandler = _tabs[0];
    _controller = new TabController(length: 3, vsync: this, initialIndex: page);
    _controller.addListener(_handleSelected);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  void _handleSelected() {
    setState(() {
      _myHandler = _tabs[_controller.index];
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('Pedidos'),
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
        bottom: TabBar(
              // isScrollable: true,
              labelColor: Theme.of(context).primaryColor,
              unselectedLabelColor: Colors.black38,
              indicatorColor: Theme.of(context).primaryColor,
              controller: _controller,
              tabs: [
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: new Text('${_tabs[0].title}',
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Tab(
                      child: Align(
                        alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Align(
                                alignment: Alignment.center,
                                child: new Text('${_tabs[1].title}',
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Tab(
                      child: Align(
                        alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Align(
                                alignment: Alignment.center,
                                child: new Text('${_tabs[2].title}',
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ),
                  ),
                ),
              ]),
      ),
      body: TabBarView(
        children: [
          Container(),
          Container(),
          Container()
        ],
        controller: _controller,
      ),
    );
  }
}