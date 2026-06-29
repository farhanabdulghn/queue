import 'dart:async';

import 'package:example/models/queue/queue_model.dart';
import 'package:example/utils/enums.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'queue_notifier.g.dart';

@riverpod
class QueueNotifier extends _$QueueNotifier {
  int _page = 1;
  final int _limit = 20;
  bool _hasMore = true;
  bool _isLoadingMore = false;
  StreamSubscription? _statusStreamSub;

  @override
  FutureOr<List<QueueModel>> build() async {
    ref.onDispose(() => _statusStreamSub?.cancel());

    _startSimulatedStream();
    return _fetchData(page: 1);
  }

  Future<List<QueueModel>> _fetchData({required int page}) async {
    await Future.delayed(Duration(seconds: 1));

    return List.generate(_limit, (index) {
      int id = (page - 1) * _limit + index;
      return QueueModel(id: id, name: 'Pasien $id', type: QueueType.wait);
    });
  }

  Future<void> refresh() async {
    state = AsyncLoading();
    _page = 1;
    _hasMore = true;
    state = await AsyncValue.guard(() => _fetchData(page: 1));
  }

  Future<void> loadMore() async {
    if (_isLoadingMore || !_hasMore || state.value == null) return;

    _isLoadingMore = true;
    try {
      final newItems = await _fetchData(page: _page + 1);
      if (newItems.isEmpty) {
        _hasMore = false;
      } else {
        _page++;
        final currentList = state.value!;
        state = AsyncData([...currentList, ...newItems]);
      }
    } catch (e) {
      //
    } finally {
      _isLoadingMore = false;
    }
  }

  void _startSimulatedStream() {
    _statusStreamSub = Stream.periodic(Duration(seconds: 3)).listen((_) {
      if (state.value == null) return;
      final list = List<QueueModel>.from(state.value!);

      int calledIndex = list.indexWhere((e) => e.type == QueueType.called);
      if (calledIndex != -1) {
        list[calledIndex] = list[calledIndex].copyWith(type: QueueType.done);
      }

      int waitIndex = list.indexWhere((e) => e.type == QueueType.wait);
      if (waitIndex != -1) {
        list[waitIndex] = list[waitIndex].copyWith(type: QueueType.called);
      }

      state = AsyncData(list);
    });
  }
}
