import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

base class AppObserver extends ProviderObserver {
  @override
  void didAddProvider(ProviderObserverContext context, Object? value) {
    log(
      'ADD: ${context.provider.name ?? context.provider.runtimeType} -> $value',
    );
  }

  @override
  void didUpdateProvider(
    ProviderObserverContext context,
    Object? previousValue,
    Object? newValue,
  ) {
    log(
      'UPDATE: ${context.provider.name ?? context.provider.runtimeType}'
      ' | $previousValue -> $newValue',
    );
  }

  @override
  void didDisposeProvider(ProviderObserverContext context) {
    log('DISPOSE: ${context.provider.name ?? context.provider.runtimeType}');
  }
}
