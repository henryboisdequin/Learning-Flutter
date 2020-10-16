import "package:flutter/material.dart";
import 'package:myFlutterApp/src/components/drawer.dart';
import 'package:myFlutterApp/src/components/homeCard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String myText = "Your Input";
  TextEditingController _textController = TextEditingController();

  // Component did mount in react
  @override
  void initState() {
    super.initState();
  }

  // Component unmounts in flutter
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Flutter is Awesome!"),
      ),
      body: Center(
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child:
                    HomeCard(myText: myText, textController: _textController),
              ))),
      drawer: HomeDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _textController.text;
          setState(() {});
        }, // empty function in dart
        child: Icon(Icons.done),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
