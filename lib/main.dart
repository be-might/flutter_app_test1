import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: ThemeData(
        //     iconTheme: const IconThemeData(color: Colors.white),
        //     textTheme:
        //         const TextTheme(bodyText2: TextStyle(color: Colors.white))),
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider<ColorProvider>.value(value: ColorProvider())
          ],
          child: const BodyWidget(),
        ));
  }
}

class BodyWidget extends StatefulWidget {
  const BodyWidget({super.key});

  @override
  State<BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  bool _switcher = false;

  @override
  Widget build(BuildContext context) {
    ColorProvider state = Provider.of<ColorProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homework Provider'),
        centerTitle: true,
        backgroundColor: state._titleColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              height: 200,
              width: 200,
              decoration: BoxDecoration(color: state._boxColor),
              duration: const Duration(milliseconds: 500),
            ),
            const SizedBox(
              height: 10,
            ),
            Switch(
              value: _switcher,
              onChanged: (value) {
                state._changeColors();
                setState(() {
                  _switcher = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

class ColorProvider with ChangeNotifier {
  Color _titleColor = Colors.white;
  Color get titleColor => _titleColor;

  Color _boxColor = Colors.white;
  Color get boxColor => _boxColor;

  void _changeColors() {
    _boxColor =
        Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    _titleColor =
        Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    notifyListeners();
  }
}
