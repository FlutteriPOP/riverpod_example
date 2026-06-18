import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = NotifierProvider<CounterNotifire, int>(
  () => CounterNotifire(),
);

class CounterNotifire extends Notifier<int> {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state++;
  }

  void decrement() {
    if (state <= 0) return;
    state--;
  }
}
