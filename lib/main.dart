import 'package:flutter/material.dart';
import 'package:intervaltimer/screens/home_screen.dart';
import 'package:intervaltimer/screens/new_timer_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => const HomeScreen(),
        NewTimerScreen.routeName: (ctx) => const NewTimerScreen()
      },
    );
  }
}
