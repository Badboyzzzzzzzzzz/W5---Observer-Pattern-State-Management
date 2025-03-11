import 'package:flutter/material.dart';

class ColorCounter extends ChangeNotifier {
  int _blueCount = 0;
  int _redCount = 0;
  int get blueCount => _blueCount;
  int get redCount => _redCount;

  void incrementCountBlue() {
    _blueCount++;
    notifyListeners(); // notify UI to update
  }
  void incrementCountRed() {
    _redCount++;
    notifyListeners();
  }
}
