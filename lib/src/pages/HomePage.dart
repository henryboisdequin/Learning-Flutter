import "package:flutter/material.dart";
import 'package:myFlutterApp/src/components/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // String myText = "Your Input";
  // TextEditingController _textController = TextEditingController();

  String url = "https://jsonplaceholder.typicode.com/photos";
  var data;

  // Component did mount in react
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  // promise = future
  fetchData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    setState(() {});
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
      body: data != null ? ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(data[index]["title"]),
            subtitle: Text("ID: ${data[index]["id"]}"),
            leading: Image.network(data[index]["url"]),
          );
        },
        itemCount: data.length,
      ) : Center(
        child: CircularProgressIndicator(),
      ),
      drawer: HomeDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // myText = _textController.text;
          // setState(() {});
        }, // empty function in dart
        child: Icon(Icons.done),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
