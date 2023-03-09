import 'package:flutter/material.dart';

class DarkTheme with ChangeNotifier{
  var isDarkMode = false;

  bool get darkModeStatus{
    return isDarkMode;
  }

  void setMode(){
    isDarkMode =! isDarkMode;
    notifyListeners();
  }
}