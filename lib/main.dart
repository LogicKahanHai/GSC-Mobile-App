import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter Demo'),
            backgroundColor: Colors.deepPurpleAccent,
          ),
          body: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Hello World',
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  'Hello World',
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  'Hello World',
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
