import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedDice = 1;
  int _selectedDice2 = 1;

  int getRandomNumber() {
    int number = Random().nextInt(6) + 1;
    setState(() {
      _selectedDice = number;
    });
    return _selectedDice;
  }

  int getRandomNumber2() {
    int number = Random().nextInt(6) + 1;
    setState(() {
      _selectedDice2 = number;
    });
    return _selectedDice2;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text("DICE"),
          backgroundColor: Colors.red,
        ),
        body: Center(
            child: Row(
          children: [
            Expanded(
                child: InkWell(
                    onTap: () {
                      getRandomNumber();
                    },
                    child: Image.asset("images/dice$_selectedDice.png"))),
            SizedBox(width: 20),
            Expanded(
                child: InkWell(
                    onTap: () {
                      getRandomNumber2();
                    },
                    child: Image.asset("images/dice$_selectedDice2.png"))),
          ],
        )),
      ),
    );
  }
}
