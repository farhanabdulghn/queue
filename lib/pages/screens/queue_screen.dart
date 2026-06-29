import 'package:example/extensions/extensions.dart';
import 'package:example/pages/sections/queue_section.dart';
import 'package:example/states/stores/queue/queue_notifier.dart';
import 'package:example/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QueueScreen extends ConsumerWidget {
  const QueueScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final queueState = ref.watch(queueProvider);
    final queues = queueState.value ?? [];

    return DefaultTabController(
      length: QueueType.values.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Antrian'),
          bottom: TabBar(
            tabs: QueueType.values.map((tab) {
              final count = queues.where((e) => e.type == tab).length;

              return Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(tab.title),
                    const SizedBox(width: 8),
                    if (count > 0) Badge.count(count: count),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
        body: queueState.when(
          data: (_) => const TabBarView(
            children: [
              QueueSection(type: QueueType.wait),
              QueueSection(type: QueueType.called),
              QueueSection(type: QueueType.done),
            ],
          ),
          loading: () =>
              const Center(child: CircularProgressIndicator.adaptive()),
          error: (err, stack) => Center(child: Text('Terjadi Kesalahan: $err')),
        ),
      ),
    );
  }
}
