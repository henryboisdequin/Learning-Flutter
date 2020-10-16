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
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8),
          width: 100,
          height: 100,
          // mostly always use antiAlias
          clipBehavior: Clip.antiAlias,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(colors: [
              Colors.pink,
              Colors.yellow,
            ]),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
              )],
            ),
          child: Text(
            "I am a box...",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            ),
        ),
      ),
    );
  }
}
