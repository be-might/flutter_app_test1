import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text(
            'Weather Forecast',
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.red,
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
        ),
        body: const _BodyWidget(),
      ),
    );
  }
}

class _BodyWidget extends StatelessWidget {
  const _BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Icon(Icons.search),
            ),
            SizedBox(
              width: 10,
            ),
            Text('Enter City Name'),
          ],
        ),
        const SizedBox(
          height: 36,
        ),
        const Text(
          'Moscow Oblast, UA',
          style: TextStyle(fontSize: 33, fontWeight: FontWeight.w300),
        ),
        const SizedBox(height: 12),
        const Text(
          'Friday, Mar 20, 2020',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
        ),
        const SizedBox(height: 45),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.sunny,
              size: 70,
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              children: const [
                Text(
                  '14 °F',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.w100),
                ),
                Text(
                  'LIGHT SNOW',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: const [
                Icon(
                  Icons.severe_cold,
                  size: 30,
                ),
                SizedBox(
                  height: 5,
                ),
                Text('5',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w200)),
                Text('km/hr',
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w200)),
              ],
            ),
            Column(
              children: const [
                Icon(
                  Icons.severe_cold,
                  size: 30,
                ),
                SizedBox(
                  height: 5,
                ),
                Text('3',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w200)),
                Text('%',
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w200)),
              ],
            ),
            Column(
              children: const [
                Icon(
                  Icons.severe_cold,
                  size: 30,
                ),
                SizedBox(
                  height: 5,
                ),
                Text('20',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w200)),
                Text('%',
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w200)),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 45,
        ),
        const Text('7-DAY WEATHER FORECAST',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300)),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 150,
                  height: 100,
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 215, 107, 99)),
                  child: Column(
                    children: [
                      const Text('Friday',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w300)),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('6 °F',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w300)),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.sunny,
                            size: 38,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Container(
                  width: 150,
                  height: 100,
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 215, 107, 99)),
                  child: Column(
                    children: [
                      const Text('Saturday',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w300)),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('5 °F',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w300)),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.sunny,
                            size: 38,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Container(
                  width: 150,
                  height: 100,
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 215, 107, 99)),
                  child: Column(
                    children: [
                      const Text('Sunday',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w300)),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('22 °F',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w300)),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.sunny,
                            size: 38,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
