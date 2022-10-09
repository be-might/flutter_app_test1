import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_test1/pages/form_screen.dart';

void main() {
  runApp(const MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          iconTheme: const IconThemeData(color: Colors.white),
          textTheme:
              const TextTheme(bodyText2: TextStyle(color: Colors.white))),
      home: BodyWidget(),
    );
  }
}
