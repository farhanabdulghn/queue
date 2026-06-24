import 'package:example/extensions/extensions.dart';
import 'package:example/pages/sections/queue_called_section.dart';
import 'package:example/pages/sections/queue_done_section.dart';
import 'package:example/pages/sections/queue_waiting_section.dart';
import 'package:example/states/stores/queue/queue_notifier.dart';
import 'package:example/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QueueScreen extends ConsumerStatefulWidget {
  const QueueScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _QueueScreenState();
}

class _QueueScreenState extends ConsumerState<QueueScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: QueueType.values.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Antrian'),
          bottom: TabBar(
            tabs: QueueType.values.map((tab) {
              final queues = ref
                  .watch(queueProvider)
                  .where((e) => e.type == tab);

              return Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 8,
                  children: [
                    Text(tab.title),
                    if (queues.isNotEmpty) Badge.count(count: queues.length),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
        body: TabBarView(
          children: [
            QueueWaitingSection(),
            QueueCalledSection(),
            QueueDoneSection(),
          ],
        ),
      ),
    );
  }
}
