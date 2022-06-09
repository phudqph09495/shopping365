import 'package:flutter/material.dart';
import 'Screens/Phu/first.dart';
import 'Screens/Phu/login.dart';
import 'Screens/Phu/registration.dart';
import 'Screens/Phu/rate_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RateScreen(),
    );
  }
}
