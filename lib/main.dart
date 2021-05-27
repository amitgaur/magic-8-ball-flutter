import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallApp(),
      ),
    );

class BallApp extends StatefulWidget {
  @override
  _BallAppState createState() => _BallAppState();
}

class _BallAppState extends State<BallApp> {
  var label = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ask Me Anything"),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Center(
          child: TextButton(
              onPressed: () {
                setState(() {
                  label = Random().nextInt(5) + 1;
                  print("$label");
                });
              },
              child: Image.asset("images/ball$label.png"))),
      backgroundColor: Colors.blue.shade300,
    );
  }
}
