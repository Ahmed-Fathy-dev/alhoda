import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final clockProvider = ChangeNotifierProvider((_) => ClockProvider());


class ClockProvider extends ChangeNotifier {
  DateTime _currentTime = DateTime.now();

  DateTime get currentTime => _currentTime;

  void updateTime(DateTime newTime) {
    _currentTime = newTime;
    notifyListeners();
  }
}
