import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  int value = 0;

  incriment() {
    value++;
    notifyListeners();
  }
}
