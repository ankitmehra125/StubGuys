import 'dart:async';

import 'package:flutter/material.dart';

class TimerApp extends StatefulWidget {
  @override
  _TimerAppState createState() => _TimerAppState();
}

class _TimerAppState extends State<TimerApp> {
  late Timer _timer;
  int _secondsRemaining = 119;

  @override
  void initState() {
    super.initState();

    // Start the timer when the widget is created
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_secondsRemaining > 0) {
          _secondsRemaining--;
        } else {
          _timer.cancel(); // Cancel the timer when it reaches 0
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    int minutes = _secondsRemaining ~/ 60;
    int seconds = _secondsRemaining % 60;

    return Text(
      '0$minutes : $seconds',
      style: TextStyle(
        color: Color(0xFF8DC73F),
        fontSize: 16.0,
        fontFamily: 'SatoshiBold',
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }
}

void main() {
  runApp(MaterialApp(
    home: TimerApp(),
  ));
}
