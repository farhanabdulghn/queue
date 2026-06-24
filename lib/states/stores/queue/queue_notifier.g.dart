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
    extends $NotifierProvider<QueueNotifier, List<QueueModel>> {
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

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<QueueModel> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<QueueModel>>(value),
    );
  }
}

String _$queueNotifierHash() => r'eff74d0db93dd18c839b8bf3d53de92181c75f27';

abstract class _$QueueNotifier extends $Notifier<List<QueueModel>> {
  List<QueueModel> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<List<QueueModel>, List<QueueModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<QueueModel>, List<QueueModel>>,
              List<QueueModel>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
