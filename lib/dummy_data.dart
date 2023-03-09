import 'model/timer.dart';

var DUMMY_TIMER = [
  Timer(
      id: 1,
      name: 'My first timer',
      numberReps: 10,
      activeTime: const Duration(minutes: 3, seconds: 00),
      restTime: const Duration(minutes: 30),
  ),
  Timer(
    id: 2,
    name: 'My second timer',
    numberReps: 10,
    activeTime: const Duration(minutes: 1, seconds: 30),
    restTime: const Duration(minutes: 15),
  ),
  Timer(
    id: 3,
    name: 'My third timer',
    numberReps: 10,
    activeTime: const Duration(minutes: 1, seconds: 30),
    restTime: const Duration(minutes: 15),
  ),
  Timer(
    id: 4,
    name: 'My fourth timer',
    numberReps: 4,
    activeTime: const Duration(minutes: 1, seconds: 30),
    restTime: const Duration(minutes: 15),
  )
];