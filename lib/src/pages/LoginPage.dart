import 'package:flutter/material.dart';
import 'package:myFlutterApp/src/utils/constants.dart';
import './HomePage.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = "/login";

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              "assets/clement-h-programming.jpg",
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.5),
              colorBlendMode: BlendMode.darken,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Center(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              TextFormField(
                                controller: _usernameController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  hintText: "Enter email...",
                                  labelText: "Username",
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                controller: _passwordController,
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: "Enter password...",
                                  labelText: "Password",
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              RaisedButton(
                                onPressed: () {
                                  Constants.prefs.setBool("loggedIn", true);
                                  // Route route = MaterialPageRoute(
                                  //     builder: (context) => HomePage());
                                  // Navigator.pushReplacement(context, route);
                                  // Navigator.pushNamed(
                                  //     context, HomePage.routeName);
                                    Navigator.pushReplacementNamed(
                                        context, HomePage.routeName);
                                },
                                child: Text("Login"),
                                color: Colors.orange,
                                textColor: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
