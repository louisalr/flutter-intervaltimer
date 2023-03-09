import 'package:flutter/material.dart';
import 'package:intervaltimer/model/timer.dart';
import 'package:intervaltimer/screens/duration_test.dart';
import 'package:intervaltimer/screens/settings_screen.dart';
import 'package:intervaltimer/widgets/latest_timer_item.dart';
import 'package:intervaltimer/widgets/timer_item.dart';

import 'new_timer_screen.dart';

class HomeScreen extends StatefulWidget {
  final List<Timer> userTimers;
  const HomeScreen({Key? key, required this.userTimers}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // By default, the user doesn't have any timers

  @override
  Widget build(BuildContext context) {
    // Obtain informations about the screen size
    final mediaQuery = MediaQuery.of(context);
    // To know the orientation we're currently in : portrait, landscape
    final isLandscape = mediaQuery.orientation == Orientation.landscape;
    // Get the dimensions of the user screen
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timers'),
        actions: [
          IconButton(onPressed: () {
            Navigator.of(context).pushNamed(SettingsScreen.routeName);
          }, icon: const Icon(Icons.settings))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
            left: mediaQuery.size.width * 0.05,
            right: mediaQuery.size.width * 0.05
        ),
        child: Column(
          children: [
            // Returns the latest used timer on the top
            LatestTimerItem(
              name: widget.userTimers[0].name,
              mediaQuery: mediaQuery,
              numberReps: widget.userTimers[0].numberReps,
              activeTime: widget.userTimers[0].activeTime,
              restTime: widget.userTimers[0].restTime,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 5),
                borderRadius: const BorderRadius.all(Radius.circular(20))
              ),
              height: 300,
              child: ListView.builder(
                itemBuilder: (_, i) => Column(
                  children: [TimerItem(
                    name: widget.userTimers[i].name,
                    numberReps: widget.userTimers[i].numberReps,
                    activeTime: widget.userTimers[i].activeTime,
                    restTime: widget.userTimers[i].restTime,
                  ), const Divider()
                  ]
                ),
                itemCount: widget.userTimers.length,),
            ),
            Expanded(
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(NewTimerScreen.routeName);
                        }, child: const Text('Add a new timer')
                    )
                )
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => DurationTest()));
                }, 
                child: const Text('Test')
            )
          ],
        ),
      ),
    );
  }
}
