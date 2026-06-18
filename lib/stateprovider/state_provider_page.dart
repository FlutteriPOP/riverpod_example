import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/stateprovider/stateprovider.dart';

class StateProviderPage extends StatelessWidget {
  const StateProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('StateProvider'), centerTitle: true),

      body: Consumer(
        builder: (context, ref, child) {
          final name = ref.watch(nameStateProvider);
          return Center(child: Text(name));
        },
      ),
    );
  }
}
