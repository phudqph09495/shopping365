import 'package:flutter/material.dart';

import '../../utils/Item/button_1.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/Background.jpg"), fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 150),
            Image(
              image: AssetImage("images/logo.jpg"),
            ),
            Button1(
                width: 215,
                textColor: Colors.white,
                textButton: 'Đăng nhập',
                gradient: LinearGradient(colors: [
                  Colors.lightBlueAccent,
                  Colors.blue,
                ])),
            SizedBox(
              height: 15,
            ),
            Button1(
                width: 215,
                textColor: Colors.blue,
                textButton: 'Đăng ký',
                border: Border.all(color: Colors.blue, width: 1))
          ],
        ),
      ),
    );
  }
}
