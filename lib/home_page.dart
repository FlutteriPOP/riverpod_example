import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/main.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  void onSubmit(WidgetRef ref, String value) {
    ref.read(nameProvider.notifier).updateName(value);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(nameProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Provider Example')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: [
            TextFormField(
              onChanged: (value) => onSubmit(ref, value),
              // onFieldSubmitted: (value) => onSubmit(ref, value),
            ),
            SizedBox(height: 20),
            Center(child: Text(user.name)),
          ],
        ),
      ),
    );
  }
}
