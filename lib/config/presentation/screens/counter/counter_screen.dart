import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/presentation/providers/counter_provider.dart';
import 'package:widgets_app/config/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const String name = "counter_screen";
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final clickCounter = ref.watch(counterProvider);
    final isDark = ref.watch(isDarkModeProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Screen'),
          actions: [
            IconButton(
                onPressed: () {
                  ref.read(isDarkModeProvider.notifier).state =
                      !ref.read(isDarkModeProvider);
                },
                icon: isDark
                    ? const Icon(Icons.dark_mode_outlined)
                    : const Icon(Icons.light_mode_outlined))
          ],
        ),
        body: Center(
            child: Text(
          'Valor: $clickCounter',
          style: Theme.of(context).textTheme.titleLarge,
        )),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              ref.read(counterProvider.notifier).state++;
            }));
  }
}
