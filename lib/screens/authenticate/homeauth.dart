import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weshoping/animations/FadeAnimation.dart';

class HomeauthScreen extends StatefulWidget {
  @override
  _HomeauthScreenState createState() => _HomeauthScreenState();
}

class _HomeauthScreenState extends State<HomeauthScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          Future.value(
              false);
        },
        child: Scaffold(
          body: SingleChildScrollView(
            child: new Container(
              color: Theme.of(context).backgroundColor,
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              // decoration: BoxDecoration(
              //   color: Theme.of(context).primaryColor,
              //   image: DecorationImage(
              //     colorFilter: new ColorFilter.mode(
              //         Colors.black.withOpacity(0.1), BlendMode.dstATop),
              //     image: AssetImage('lib/assets/images/bg-building.jpg'),
              //     fit: BoxFit.cover,
              //   ),
              // ),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    // color: Colors.red,
                    padding: EdgeInsets.all(24.0),
                    child: new SvgPicture.asset(
                      'lib/assets/images/present_home.svg',
                      width: 330,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
                    child: Column(
                      children: <Widget>[
                        Text('Comprar desde casa',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text('Get a domain and create a website with Squarespace. Start your free trial today.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            // fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FadeAnimation(
                            1.3,
                            new Container(
                              width: 150,
                              alignment: Alignment.center,
                              child: new Row(
                                children: <Widget>[
                                  new Expanded(
                                    child: new FlatButton(
                                      shape: new RoundedRectangleBorder(
                                      borderRadius:new BorderRadius.circular(6.0)),
                                      color: Theme.of(context).primaryColor,
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/login');
                                      },
                                      child: new Container(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 14.0,
                                          horizontal: 14.0,
                                        ),
                                        child: new Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            new Expanded(
                                              child: Text(
                                                "Login",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ),
                          SizedBox(width: 30,),
                          FadeAnimation(
                            1.3,
                            new Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Theme.of(context).primaryColor,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(7),
                              ),
                              width: 150,
                              alignment: Alignment.center,
                              child: new Row(
                                children: <Widget>[
                                  new Expanded(
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.pushNamed(context, '/signup');
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
                                              "Sign Up",
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
                            )
                        ),
                      ]
                    )
                  ),
                  new Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
                    alignment: Alignment.center,
                    child: Row(
                      children: <Widget>[
                        new Expanded(
                          child: new Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(border: Border.all(width: 0.25)),
                          ),
                        ),
                        Text(
                          "OR CONNECT WITH",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        new Expanded(
                          child: new Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(border: Border.all(width: 0.25)),
                          ),
                        ),
                      ],
                    ),
                  ),

                  new Container(
                    width: 190,
                    margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
                    child: new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new Container(
                            margin: EdgeInsets.only(right: 8.0),
                            alignment: Alignment.center,
                            child: new Row(
                              children: <Widget>[
                                new Expanded(
                                  child: new FlatButton(
                                    shape: new RoundedRectangleBorder(
                                      borderRadius: new BorderRadius.circular(6.0),
                                    ),
                                    color: Color(0Xff3B5998),
                                    onPressed: () => {},
                                    child: new Container(
                                      child: new Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          new Expanded(
                                            child: new FlatButton(
                                              onPressed: ()=>{},
                                              padding: EdgeInsets.only(
                                                top: 14.0,
                                                bottom: 14.0,
                                              ),
                                              child: new Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceEvenly,
                                                children: <Widget>[
                                                  Icon(
                                                    const IconData(0xea90,
                                                        fontFamily: 'icomoon'),
                                                    color: Colors.white,
                                                    size: 15.0,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        new Expanded(
                          child: new Container(
                            margin: EdgeInsets.only(left: 8.0),
                            alignment: Alignment.center,
                            child: new Row(
                              children: <Widget>[
                                new Expanded(
                                  child: new FlatButton(
                                    shape: new RoundedRectangleBorder(
                                      borderRadius: new BorderRadius.circular(6.0),
                                    ),
                                    color: Color(0Xffdb3236),
                                    onPressed: () => {},
                                    child: new Container(
                                      child: new Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          new Expanded(
                                            child: new FlatButton(
                                              onPressed: ()=>{},
                                              padding: EdgeInsets.only(
                                                top: 14.0,
                                                bottom: 14.0,
                                              ),
                                              child: new Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceEvenly,
                                                children: <Widget>[
                                                  Icon(
                                                    const IconData(0xea88,
                                                        fontFamily: 'icomoon'),
                                                    color: Colors.white,
                                                    size: 15.0,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 9,),
                        new Expanded(
                          child: new Container(
                            margin: EdgeInsets.only(left: 8.0),
                            alignment: Alignment.center,
                            child: new Row(
                              children: <Widget>[
                                new Expanded(
                                  child: new FlatButton(
                                    shape: new RoundedRectangleBorder(
                                      borderRadius: new BorderRadius.circular(6.0),
                                    ),
                                    color: Color(0Xff00acee),
                                    onPressed: () => {},
                                    child: new Container(
                                      child: new Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          new Expanded(
                                            child: new FlatButton(
                                              onPressed: ()=>{},
                                              padding: EdgeInsets.only(
                                                top: 14.0,
                                                bottom: 14.0,
                                              ),
                                              child: new Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceEvenly,
                                                children: <Widget>[
                                                  Icon(
                                                    const IconData(0xea96,
                                                        fontFamily: 'icomoon'),
                                                    color: Colors.white,
                                                    size: 15.0,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ),
        )
      );
  }
}
