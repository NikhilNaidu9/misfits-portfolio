import 'package:flutter/material.dart';
import 'package:misfitswebsite/Landing/landing.dart';
import 'package:misfitswebsite/Navbar/navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:
          ThemeData(fontFamily: "BebasNeue", primaryColor: Colors.greenAccent),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: ListView(
          children: [NavBar(), LandingPage()],
        ),
      ),
    );
  }
}
