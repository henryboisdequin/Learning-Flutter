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
        color: Colors.teal,
        alignment: Alignment.center,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
            Container(
            padding: const EdgeInsets.all(8),
            width: 100,
            height: 100,
            alignment: Alignment.center,
            color: Colors.red,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            width: 100,
            height: 100,
            alignment: Alignment.center,
            color: Colors.yellow,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            width: 100,
            height: 100,
            alignment: Alignment.center,
            color: Colors.purple,
          ),
          ],
        ),
      ),
    );
  }
}
