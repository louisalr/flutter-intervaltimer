import 'package:flutter/material.dart';

import '../screens/play_timer_screen.dart';

class LatestTimerItem extends StatelessWidget {
  final MediaQueryData mediaQuery;
  final String name;
  final int numberReps;
  final Duration activeTime;
  final Duration restTime;

  const LatestTimerItem
      ({Key? key,
    required this.mediaQuery,
    required this.name,
    required this.numberReps,
    required this.activeTime,
    required this.restTime}) : super(key: key);

  String durationToString(Duration duration) {
    var seconds = (duration.inMilliseconds % (60 * 1000)) / 1000;
    return '${duration.inMinutes}m${seconds.toStringAsFixed(2)}s';
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: mediaQuery.size.height * 0.4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(durationToString(activeTime)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(durationToString(restTime)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(numberReps.toString()),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(PlayTimerScreen.routeName);
            },
            child: const Text('Start'),
          )
        ],
      ),
    );
  }
}
