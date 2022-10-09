import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is A Flutter App',
            style: TextStyle(
              color: Colors.white,
            )),
      ),
      body: Material(
        color: Colors.lightBlueAccent,
        child: Center(
            child: Text(
          generateLuckyNumber(),
          style: const TextStyle(
            color: Colors.white,
          ),
        )),
      ),
    );
  }

  String generateLuckyNumber() {
    var random = Random();
    int luckyNumber = random.nextInt(10);
    return "This is Your Lucky Number $luckyNumber";
  }
}
