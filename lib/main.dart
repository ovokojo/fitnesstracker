import 'package:flutter/material.dart';
import 'package:timetracker/app/landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Tracker',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: LandingPage(),
    );
  }
}
