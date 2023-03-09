import 'package:flutter/material.dart';

class AppBarItem extends StatelessWidget {
  final String title;
  final Actions? actions;
  const AppBarItem({Key? key, required this.title, this.actions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
    );
  }
}
