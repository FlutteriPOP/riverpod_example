import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:riverpod_example/home_page.dart';
import 'package:riverpod_example/user.dart';

// Providers
// stateprovider
//

// final nameProvider = Provider<String>((ref) => "Bir");

// final nameProvider = StateProvider<String?>((ref) => null);

final nameProvider = StateNotifierProvider<UserProvider, User>(
  (ref) => UserProvider(User(age: 0, name: '')),
);

void main() {
  runApp(ProviderScope(child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}
