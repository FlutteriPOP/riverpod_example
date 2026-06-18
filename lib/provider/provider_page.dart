import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/provider/provider.dart';

class ProviderPage extends ConsumerWidget {
  const ProviderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.read(nameProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Provider Exaple')),
      body: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
        children: [Center(child: Text(name, style: TextStyle(fontSize: 20)))],
      ),
    );
  }
}
