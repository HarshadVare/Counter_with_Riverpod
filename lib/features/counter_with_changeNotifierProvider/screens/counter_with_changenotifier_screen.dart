import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controller/counter_with_changenotifier.dart';

class CounterWithChangeNotifierProviderScreen extends ConsumerWidget {
  const CounterWithChangeNotifierProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final provider = ref.read(counterChangeNotifierControllerProvider);
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: const Text(
            "ChangeNotifierProvider",
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ref
                  .watch(counterChangeNotifierControllerProvider)
                  .counterValue
                  .toString(),
              style: const TextStyle(color: Colors.black),
            ),
            ElevatedButton.icon(
                onPressed: () => ref
                    .read(counterChangeNotifierControllerProvider)
                    .addCounter(),
                icon: const Icon(Icons.add),
                label: const Text('Add')),
            ElevatedButton.icon(
                onPressed: () => ref
                    .read(counterChangeNotifierControllerProvider)
                    .removeCounter(),
                icon: const Icon(Icons.remove),
                label: const Text('remove'))
          ],
        ),
      ),
    );
  }
}
