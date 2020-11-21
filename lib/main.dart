import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 1000;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Break the EGG!',
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                counter.toString(),
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.blue,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (counter <= 0) {
                      counter = 1000;
                    } else {
                      counter--;
                    }
                  });
                },
                child: counter != 0
                    ? Image.asset('images/egg.png')
                    : Image.asset('images/eggBroken.png'),
              ),
            ],
          )),
    );
  }
}
