import 'package:flutter/material.dart';
import 'src/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './src/pages/HomePage.dart';
import './src/pages/LoginPage.dart';

// Note: If you make changes to main, need to hot restart
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Constants.prefs.getBool("loggedIn") == true ? HomePage() : LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        HomePage.routeName: (context) => HomePage(),
      },
    );
  }
}
