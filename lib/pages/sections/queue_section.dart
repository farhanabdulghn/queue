import 'package:example/extensions/extensions.dart';
import 'package:example/states/stores/queue/queue_notifier.dart';
import 'package:example/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QueueSection extends ConsumerStatefulWidget {
  final QueueType type;
  const QueueSection({super.key, required this.type});

  @override
  ConsumerState<QueueSection> createState() => _QueueSectionState();
}

class _QueueSectionState extends ConsumerState<QueueSection> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 50) {
        ref.read(queueProvider.notifier).loadMore();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Color _getCardColor(QueueType type) {
    switch (type) {
      case QueueType.wait:
        return Colors.orangeAccent;
      case QueueType.called:
        return Colors.green;
      case QueueType.done:
        return Colors.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    final queueState = ref.watch(queueProvider);
    final allQueues = queueState.value ?? [];

    final filteredQueues = allQueues
        .where((e) => e.type == widget.type)
        .toList();

    return RefreshIndicator(
      onRefresh: () => ref.read(queueProvider.notifier).refresh(),
      child: filteredQueues.isEmpty
          ? ListView(
              physics: AlwaysScrollableScrollPhysics(),
              children: [
                SizedBox(height: 100),
                Center(child: Text('Data antrian kosong')),
              ],
            )
          : ListView.builder(
              controller: _scrollController,
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.all(18),
              itemCount: filteredQueues.length,
              itemBuilder: (context, index) {
                final queue = filteredQueues[index];

                return Card(
                  color: _getCardColor(queue.type),
                  child: Padding(
                    padding: EdgeInsets.all(24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text(queue.name), Text(queue.type.title)],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
