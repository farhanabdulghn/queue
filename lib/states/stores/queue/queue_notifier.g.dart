// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(QueueNotifier)
final queueProvider = QueueNotifierProvider._();

final class QueueNotifierProvider
    extends $AsyncNotifierProvider<QueueNotifier, List<QueueModel>> {
  QueueNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'queueProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$queueNotifierHash();

  @$internal
  @override
  QueueNotifier create() => QueueNotifier();
}

String _$queueNotifierHash() => r'd7740a62502210badf7853a5694ea548aea4a44f';

abstract class _$QueueNotifier extends $AsyncNotifier<List<QueueModel>> {
  FutureOr<List<QueueModel>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<QueueModel>>, List<QueueModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<QueueModel>>, List<QueueModel>>,
              AsyncValue<List<QueueModel>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
