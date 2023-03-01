import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewTimerScreen extends StatelessWidget {
  static const routeName = '/new-timer';
  const NewTimerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New timer'),
      ),
      body: null,
    );
  }
}
