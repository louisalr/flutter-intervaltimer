import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'new_timer_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timers'),
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushNamed(NewTimerScreen.routeName);
                },
                child: Text('Add new timer'))
          ],
        ),
      ),
    );
  }
}
