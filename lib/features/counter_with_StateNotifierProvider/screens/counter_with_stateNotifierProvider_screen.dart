import 'package:counter_with_riverpod/features/counter_with_StateNotifierProvider/controller/counter_with_stateNotifierProvider_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterWithStateNotifierProviderScreen extends ConsumerWidget {
  const CounterWithStateNotifierProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(counterWithStateNotifierControllerProider);
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: const Text(
            "StateNotifierProvider",
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              value.toString(),
              style: const TextStyle(color: Colors.black),
            ),
            ElevatedButton.icon(
                onPressed: () => ref
                    .read(counterWithStateNotifierControllerProider.notifier)
                    .addCounter(),
                icon: const Icon(Icons.add),
                label: const Text('Add')),
            ElevatedButton.icon(
                onPressed: () => ref
                    .read(counterWithStateNotifierControllerProider.notifier)
                    .removeCounter(),
                icon: const Icon(Icons.remove),
                label: const Text('remove'))
          ],
        ),
      ),
    );
  }
}
