import 'package:flutter/material.dart';

class TimerItem extends StatelessWidget {
  final String name;
  final int numberReps;
  final Duration activeTime;
  final Duration restTime;
  const TimerItem
      ({Key? key,
    required this.name,
    required this.numberReps,
    required this.activeTime,
    required this.restTime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 250,
          //color: Colors.black,
          child: Padding(padding: const EdgeInsets.only(left: 15),
            child: Column(
              children: [
                Text(name),
                Text('Reps : ${numberReps.toString()}'),
              ],
            ),
          ),
        ),
        //const Spacer(),
        IconButton(onPressed: () {}, icon: const Icon(Icons.edit), color: Colors.green,),
        IconButton(onPressed: () {}, icon: const Icon(Icons.delete), color: Colors.red)
      ],
    );
  }
}
