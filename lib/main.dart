import 'package:flutter/material.dart';
import 'package:myFlutterApp/src/pages/HomePage.dart';

// Note: If you make changes to main, need to hot restart
void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    );
  }
}
