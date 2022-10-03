import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image(image: AssetImage('assets/images/bg.jpg')),
              Image(image: AssetImage('assets/icons/icon.png'))
            ],
          ),
        ),
      ),
    );
  }
}
