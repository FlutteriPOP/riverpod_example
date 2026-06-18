import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/notifire/notifire.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);

    ref.listen(counterProvider, (previous, next) {
      if (next == 5) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('Counter reached 5!')));
      }
    });

    return Scaffold(
      appBar: AppBar(title: Text('Counter Example')),

      body: Center(
        child: Text(counter.toString(), style: TextStyle(fontSize: 30)),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: .end,
        crossAxisAlignment: .end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              ref.read(counterProvider.notifier).increment();
            },
          ),
          SizedBox(height: 20),
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              ref.read(counterProvider.notifier).decrement();
            },
          ),
        ],
      ),
    );
  }
}
