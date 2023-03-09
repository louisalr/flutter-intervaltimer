import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayTimerScreen extends StatefulWidget {
  static const routeName = '/play';
  const PlayTimerScreen({Key? key}) : super(key: key);

  @override
  State<PlayTimerScreen> createState() => _PlayTimerScreenState();
}

class _PlayTimerScreenState extends State<PlayTimerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Current timer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('My Current timer')
          ],
        ),
      ),

    );
  }
}
