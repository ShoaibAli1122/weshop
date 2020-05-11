import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weshoping/animations/FadeAnimation.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
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
            )
          ),
          body: SingleChildScrollView(
            child: new Container(
              child: Form(
                key: _formKey,
                child: FadeAnimation(
                    1.3,
                    new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom: 15.0),
                          child: new SvgPicture.asset(
                            'lib/assets/images/login.svg',
                            width: 290,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 15.0),
                          child:Text('Criar sua conta',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold
                            ),
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
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                  width: 2.0
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                  width: 2.0
                                ),
                              ),
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
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                  width: 2.0
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
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
                                            "Cadastrar-me",
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
                                          "Criar uma conta de empresa",
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
                        SizedBox(
                          height: 30.0,
                        ),
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
