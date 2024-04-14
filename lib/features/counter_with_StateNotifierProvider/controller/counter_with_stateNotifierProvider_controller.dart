import 'package:flutter_riverpod/flutter_riverpod.dart';

///with state notifierProvider
final counterWithStateNotifierControllerProider = 
    StateNotifierProvider<CounterWithStateNotifierController, int>(
        (ref) => CounterWithStateNotifierController());

class CounterWithStateNotifierController extends StateNotifier<int> {
  CounterWithStateNotifierController() : super(0);

  void addCounter() {
    state++;
  }

  void removeCounter() {
    state--;
  }
}
