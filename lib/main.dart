import 'package:flutter/material.dart';
import 'package:intervaltimer/providers/dark_theme.dart';
import 'package:intervaltimer/screens/edit_timer_screen.dart';
import 'package:intervaltimer/screens/home_screen.dart';
import 'package:intervaltimer/screens/new_timer_screen.dart';
import 'package:intervaltimer/screens/play_timer_screen.dart';
import 'package:intervaltimer/screens/settings_screen.dart';
import 'package:provider/provider.dart';
import 'dummy_data.dart';
import 'model/timer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DarkTheme(),
      child: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {

  List<Timer> _userTimers = DUMMY_TIMER;

  void _addNewTimer(Timer newTimer){
    // Push in the list the latest timer created
    _userTimers.add(newTimer);
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'OpenSans',
        ),
        darkTheme: ThemeData.dark(), // standard dark theme
        themeMode: Provider.of<DarkTheme>(context).isDarkMode ?
                        ThemeMode.dark : ThemeMode.light, // device controls theme
        initialRoute: '/',
        routes: {
          '/': (ctx) => HomeScreen(userTimers: _userTimers),
          NewTimerScreen.routeName: (ctx) => NewTimerScreen(
              addNewTimer: _addNewTimer),
          PlayTimerScreen.routeName: (ctx) => const PlayTimerScreen(),
          EditTimerScreen.routeName: (ctx) => const EditTimerScreen(),
          SettingsScreen.routeName: (ctx) => const SettingsScreen(),
        },
      );
  }
}
