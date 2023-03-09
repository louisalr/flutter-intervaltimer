import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class DurationTest extends StatefulWidget {
  const DurationTest({Key? key}) : super(key: key);

  @override
  State<DurationTest> createState() => _DurationTestState();
}

class _DurationTestState extends State<DurationTest> {

  String timerValue = "20";

  void _decreaseTimer(){
    Timer _everySecond = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      setState(() {
        timerValue = DateTime.now().second.toString();
      });
    });
  }

  Timer scheduleTimeout([int milliseconds = 10000]) =>
      Timer(Duration(milliseconds: milliseconds), handleTimeout);


  void handleTimeout(){
    print('Timer end');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(timerValue),
            ElevatedButton(
                onPressed: _decreaseTimer,
                child: const Text('Decrease the timer')
            )
          ],
        ),
      ),
    );
  }
}
