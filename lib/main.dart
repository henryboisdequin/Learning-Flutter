import 'package:flutter/material.dart';

// Note: If you make changes to main, need to hot restart
void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter is Awesome!"),
      ),
      body: Container(
        child: Text("Hello Flutter"),
      ),
    );
  }
}
