import 'package:example/extensions/extensions.dart';
import 'package:example/states/stores/queue/queue_notifier.dart';
import 'package:example/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QueueWaitingSection extends ConsumerWidget {
  const QueueWaitingSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final queues = ref
        .watch(queueProvider)
        .where((e) => e.type == QueueType.wait)
        .toList();

    return ListView.builder(
      padding: EdgeInsets.all(18),
      itemCount: queues.length,
      itemBuilder: (context, index) {
        final queue = queues[index];

        return Card(
          color: Colors.orangeAccent,
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(queue.name ?? ''), Text(queue.type?.title ?? '')],
            ),
          ),
        );
      },
    );
  }
}
