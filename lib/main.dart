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
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/clement-h-programming.jpg",
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        myText,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Source: https://unsplash.com/@clemhlrdt",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextField(
                          controller: _textController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Thoughts on Photo",
                            hintText: "I think it is nice...",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ))),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text("Boisdequin Family"),
                accountEmail: Text("boisdequin@boisdequin.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1560090995-01632a28895b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1949&q=80"),
                )),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Henry Boisdequin"),
              subtitle: Text("Learning Flutter"),
              trailing: Icon(Icons.event_available),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Oscar Boisdequin"),
              subtitle: Text("Playing FIFA"),
              trailing: Icon(Icons.event_busy),
              onTap: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _textController.text;
          setState(() {});
        }, // empty function in dart
        child: Icon(Icons.send),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
