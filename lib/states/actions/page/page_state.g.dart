// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(get)
final getProvider = GetProvider._();

final class GetProvider extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  GetProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getHash();

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    return get(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$getHash() => r'94f1eb4f364f5d6c91afd675213739029b7ff9b6';
