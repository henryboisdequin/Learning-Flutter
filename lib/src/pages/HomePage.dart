import "package:flutter/material.dart";
import 'package:myFlutterApp/src/utils/constants.dart';
import '../components/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'LoginPage.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "/home";

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

  // Component did unmount in react
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
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Constants.prefs.setBool("loggedIn", false);
              Navigator.pushReplacementNamed(context, LoginPage.routeName);
            },
          )
        ],
      ),
      body: data != null
          ? ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(data[index]["title"]),
                  subtitle: Text("ID: ${data[index]["id"]}"),
                  leading: Image.network(data[index]["url"]),
                );
              },
              itemCount: data.length,
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
      drawer: HomeDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // myText = _textController.text;
          // setState(() {});
        }, // empty function in dart
        child: IconButton(
          icon: Icon(Icons.login),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
