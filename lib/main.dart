import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dice Flipper'),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  //const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 5;
  int rightDiceNum = 3;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  changeDiceFace();
                  print('left button clicked');
                },
                child: Image.asset('images/dice$leftDiceNum.png'),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  changeDiceFace();
                  print('right button clicked');
                },
                child: Image.asset('images/dice$rightDiceNum.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void changeDiceFace() {
    setState(() {
      leftDiceNum = Random().nextInt(6) + 1;
      rightDiceNum = Random().nextInt(6) + 1;
    });
  }
}
