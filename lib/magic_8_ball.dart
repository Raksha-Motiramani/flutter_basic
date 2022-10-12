import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask me anything'),
          backgroundColor: Colors.blueAccent.shade700,
        ),
        body: EightBall(),
      ),
    )
  );
}

class EightBall extends StatefulWidget {
  const EightBall({Key? key}) : super(key: key);

  @override
  State<EightBall> createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {

  int ballnumber = 1;

  void setBallNumber(){
    setState(() {
      ballnumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget> [
          Expanded(
            child: FlatButton(
              onPressed: () {
                 setBallNumber();
              },
              child: Image.asset('images/dice$ballnumber.png'),
            ),
          )
        ],
      ),
    );
  }
}