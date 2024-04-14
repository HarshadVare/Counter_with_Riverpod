import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterWithChangeNotifierRepositoryProvider = 
    ChangeNotifierProvider<CounterWithChangeNotifierRepository>(
        (ref) => CounterWithChangeNotifierRepository(counter: 0));

class CounterWithChangeNotifierRepository extends ChangeNotifier {
  int _counter;
  int get counterValue => _counter;
  CounterWithChangeNotifierRepository({required int counter})
      : _counter = counter;

  void addCounter() {
    _counter++;
    notifyListeners();
  }

  void removeCounter() {
    _counter--;
    notifyListeners();
  }
}
