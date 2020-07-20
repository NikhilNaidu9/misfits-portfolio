import 'package:flutter/material.dart';
import 'package:misfitswebsite/Education/education.dart';
import 'package:misfitswebsite/Goals/goals.dart';
import 'package:misfitswebsite/Landing/landing.dart';
import 'package:misfitswebsite/Navbar/navbar.dart';
import 'package:misfitswebsite/Skills/skills.dart';

import 'Achievements/achievements.dart';

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
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new MyApp(),
        '/education': (BuildContext context) => new EducationPage(),
        '/skills': (BuildContext context) => new SkillsPage(),
        '/achievements': (BuildContext context) => new AchievementPage(),
        '/goals': (BuildContext context) => new GoalsPage(),
      },
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
