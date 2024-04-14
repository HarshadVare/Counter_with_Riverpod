import 'package:counter_with_riverpod/features/counter_with_changeNotifierProvider/repository/counter_with_changenotifier_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

///with changenotifierProvider
final counterChangeNotifierControllerProvider = 
    ChangeNotifierProvider<CounterChangeNotifierController>((ref) =>
        CounterChangeNotifierController(
            repository:
                ref.read(counterWithChangeNotifierRepositoryProvider)));
 
class CounterChangeNotifierController extends ChangeNotifier {
  final CounterWithChangeNotifierRepository _repository;
  CounterChangeNotifierController(
      {required CounterWithChangeNotifierRepository repository})
      : _repository = repository;

  int get counterValue => _repository.counterValue;

  void addCounter() {
    _repository.addCounter();
    notifyListeners();
  }

  void removeCounter() {
    _repository.removeCounter();
    notifyListeners();
  }
}
