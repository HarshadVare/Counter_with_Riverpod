import 'package:counter_with_riverpod/features/counter_with_StateProvider/repository/counter_with_stateProvider_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterWithStateProviderScreen extends ConsumerWidget {
  const CounterWithStateProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: const Text(
            "State Provider",
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ref.watch(riverpodStateProvider).toString(),
              style: const TextStyle(color: Colors.black),
            ),
            ElevatedButton.icon(
                onPressed: () => ref.read(riverpodStateProvider.notifier).state++,
                icon: const Icon(Icons.add),
                label: const Text('Add')),
            ElevatedButton.icon(
                onPressed: () => ref.read(riverpodStateProvider.notifier).state--,
                icon: const Icon(Icons.remove),
                label: const Text('remove'))
          ],
        ),
      ),
    );
  }
}
