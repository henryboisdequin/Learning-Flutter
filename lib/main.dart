import 'package:flutter/material.dart';
import './src/pages/HomePage.dart';
import './src/pages/LoginPage.dart';

// Note: If you make changes to main, need to hot restart
void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        LoginPage.routeName : (context) => LoginPage(),
        HomePage.routeName : (context) => HomePage(),
      },
    );
  }
}
