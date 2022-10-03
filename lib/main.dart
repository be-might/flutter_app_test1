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
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Colors.indigo,
          ),
          scaffoldBackgroundColor: Color.fromARGB(255, 113, 124, 187)),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Tap "-" to decrement',
                style: TextStyle(color: Colors.white),
              ),
              CounterWidget(),
              Text(
                'Tap "+" to increment',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _initialValue = 50;

  void increment() {
    setState(() {
      _initialValue += 1;
    });
  }
  
  void decrement() {
    setState(() {
      _initialValue -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(6),
        height: 50,
        width: 125,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 185, 192, 230)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: decrement, icon: Icon(Icons.exposure_minus_1)),
            Text(
              '$_initialValue',
              style: TextStyle(fontSize: 19),
            ),
            IconButton(onPressed: increment, icon: Icon(Icons.exposure_plus_1))
          ],
        ));
  }
}
