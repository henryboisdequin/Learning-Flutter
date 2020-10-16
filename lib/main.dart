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
          color: Colors.teal,
          height: 100,
          width: 100,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
            accountName: Text("Boisdequin Family"), 
            accountEmail: Text("boisdequin@boisdequin.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1560090995-01632a28895b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1949&q=80"
              ),
            )
            ),
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
        onPressed: () {}, // empty function in dart
        child: Icon(Icons.edit),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
