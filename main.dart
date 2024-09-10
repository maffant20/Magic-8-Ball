import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask Me Anything'),
      ),
      body: BallPage_(),
    );
  }
}

class BallPage_ extends StatefulWidget {
  @override
  _BallPage createState() => _BallPage();
}

class _BallPage extends State<BallPage_> {
  int ballnum = 0;
  void change() {
    setState(() {
      ballnum = Random().nextInt(5) + 1;
      print(ballnum);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          change();
        },
        child: Image.asset('images/ball$ballnum.png'),
      ),
    );
  }
}
