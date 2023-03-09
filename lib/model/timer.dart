class Timer{
  int id;
  String name;
  int numberReps;
  Duration activeTime;
  Duration restTime;
  // Associated a sounds

  Timer({
    required this.id,
    required this.name,
    required this.numberReps,
    required this.activeTime,
    required this.restTime
  });
}