import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weshoping/animations/FadeAnimation.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  bool _obscure = true;
  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushNamed(context, '/homeauth');
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
          key: _scaffoldKey,
          body: SingleChildScrollView(
            child: new Container(
              height: MediaQuery.of(context).size.height,
              // decoration: BoxDecoration(
              //   color: Colors.white,
              //   image: DecorationImage(
              //     colorFilter: new ColorFilter.mode(
              //         Colors.black.withOpacity(0.05), BlendMode.dstATop),
              //     image: AssetImage('lib/assets/images/bg-building.jpg'),
              //     fit: BoxFit.cover,
              //   ),
              // ),
              child: Form(
                key: _formKey,
                child: FadeAnimation(
                    1.3,
                    new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(30.0),
                          child: new SvgPicture.asset(
                            'lib/assets/images/login_back.svg',
                            width: 330,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                          child: TextFormField(
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Campo não pode estar vazio!';
                              }
                              return null;
                            },
                            controller: usernameController,
                            decoration: new InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(10.0, 9.0, 10.0, 9.0),
                                prefixIcon: Icon(Icons.local_post_office),
                              hintText:  'E-mail',
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(
                                  color:Theme.of(context).primaryColor,
                                  width: 2.0
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(
                                  color:Theme.of(context).primaryColor.withOpacity(0.6),
                                  width: 2.0
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                              )
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 24.0,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                          child: TextFormField(
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Campo não pode estar vazio!';
                              }
                              return null;
                            },
                            controller: passwordController,
                            obscureText: _obscure,
                            decoration: new InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(10.0, 9.0, 10.0, 9.0),
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _obscure = !_obscure;
                                  });
                                },
                                child: Icon(
                                  _obscure
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color:Theme.of(context).primaryColor,
                                ),
                              ),
                              hintText:  'Senha',
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(
                                  color:Theme.of(context).primaryColor,
                                  width: 2.0
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(
                                  color:Theme.of(context).primaryColor.withOpacity(0.6),
                                  width: 2.0
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 15.0, right: 15.0, top: 0.0),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.only(right: 0.0),
                              child: new FlatButton(
                                child: new Text(
                                  "Esqueceu a senha?",
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                    fontSize: 15.0,
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                                onPressed: () => {
                                  Navigator.pushNamed(context, '/recoverypass')
                                },
                              ),
                            ),
                          ],
                        )
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(
                              left: 30.0, right: 30.0, top: 0.0),
                          alignment: Alignment.center,
                          child: Row(
                            children: <Widget>[
                              new Expanded(
                                child: new FlatButton(
                                  shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(6.0),
                                  ),
                                  color:Theme.of(context).primaryColor,
                                  onPressed: () {
                                    if (_formKey.currentState
                                        .validate()) {
                                      _dologin();
                                    }
                                  },
                                  child: new Container(
                                    padding:
                                        const EdgeInsets.symmetric(
                                      vertical: 14.0,
                                      horizontal: 14.0,
                                    ),
                                    child: new Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        new Expanded(
                                          child: Text(
                                            "Login",
                                            textAlign:
                                                TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 16,
                                                color: Colors.white,
                                                fontWeight:
                                                    FontWeight.bold),
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

                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 16.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).primaryColor,
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
                                          "Criar conta",
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


                      ],
                    )
                  )
                ),
            ),
          )
        )
      );
  }
  _dologin() async {}
}
