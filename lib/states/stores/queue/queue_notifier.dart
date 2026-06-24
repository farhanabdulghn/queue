import 'package:example/models/queue/queue_model.dart';
import 'package:example/utils/enums.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'queue_notifier.g.dart';

@riverpod
class QueueNotifier extends _$QueueNotifier {
  @override
  List<QueueModel> build() {
    return [
      QueueModel(id: 0, name: 'Pasien 0', type: QueueType.wait),
      QueueModel(id: 1, name: 'Pasien 1', type: QueueType.done),
      QueueModel(id: 2, name: 'Pasien 2', type: QueueType.wait),
      QueueModel(id: 3, name: 'Pasien 3', type: QueueType.done),
      QueueModel(id: 4, name: 'Pasien 4', type: QueueType.wait),
      QueueModel(id: 5, name: 'Pasien 5', type: QueueType.done),
      QueueModel(id: 6, name: 'Pasien 6', type: QueueType.done),
      QueueModel(id: 7, name: 'Pasien 7', type: QueueType.done),
      QueueModel(id: 8, name: 'Pasien 8', type: QueueType.done),
      QueueModel(id: 9, name: 'Pasien 9', type: QueueType.called),
      QueueModel(id: 9, name: 'Pasien 10', type: QueueType.done),
      QueueModel(id: 10, name: 'Pasien 11', type: QueueType.wait),
      QueueModel(id: 11, name: 'Pasien 12', type: QueueType.called),
      QueueModel(id: 12, name: 'Pasien 13', type: QueueType.called),
      QueueModel(id: 13, name: 'Pasien 14', type: QueueType.wait),
    ];
  }
}
