// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_items_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchFavoutireItemsHash() =>
    r'602c121c051a09211759be8cef4d516f64b84d66';

/// See also [fetchFavoutireItems].
@ProviderFor(fetchFavoutireItems)
final fetchFavoutireItemsProvider =
    AutoDisposeFutureProvider<List<CoffeeShopProducts>>.internal(
  fetchFavoutireItems,
  name: r'fetchFavoutireItemsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchFavoutireItemsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FetchFavoutireItemsRef
    = AutoDisposeFutureProviderRef<List<CoffeeShopProducts>>;
String _$toogleFavoutireItemStatusHash() =>
    r'c13adf3929d050fb9c4824a48a514e1fb797f07e';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [toogleFavoutireItemStatus].
@ProviderFor(toogleFavoutireItemStatus)
const toogleFavoutireItemStatusProvider = ToogleFavoutireItemStatusFamily();

/// See also [toogleFavoutireItemStatus].
class ToogleFavoutireItemStatusFamily extends Family<AsyncValue<void>> {
  /// See also [toogleFavoutireItemStatus].
  const ToogleFavoutireItemStatusFamily();

  /// See also [toogleFavoutireItemStatus].
  ToogleFavoutireItemStatusProvider call(
    String documentId,
    bool currentStatus,
  ) {
    return ToogleFavoutireItemStatusProvider(
      documentId,
      currentStatus,
    );
  }

  @override
  ToogleFavoutireItemStatusProvider getProviderOverride(
    covariant ToogleFavoutireItemStatusProvider provider,
  ) {
    return call(
      provider.documentId,
      provider.currentStatus,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'toogleFavoutireItemStatusProvider';
}

/// See also [toogleFavoutireItemStatus].
class ToogleFavoutireItemStatusProvider
    extends AutoDisposeFutureProvider<void> {
  /// See also [toogleFavoutireItemStatus].
  ToogleFavoutireItemStatusProvider(
    String documentId,
    bool currentStatus,
  ) : this._internal(
          (ref) => toogleFavoutireItemStatus(
            ref as ToogleFavoutireItemStatusRef,
            documentId,
            currentStatus,
          ),
          from: toogleFavoutireItemStatusProvider,
          name: r'toogleFavoutireItemStatusProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$toogleFavoutireItemStatusHash,
          dependencies: ToogleFavoutireItemStatusFamily._dependencies,
          allTransitiveDependencies:
              ToogleFavoutireItemStatusFamily._allTransitiveDependencies,
          documentId: documentId,
          currentStatus: currentStatus,
        );

  ToogleFavoutireItemStatusProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.documentId,
    required this.currentStatus,
  }) : super.internal();

  final String documentId;
  final bool currentStatus;

  @override
  Override overrideWith(
    FutureOr<void> Function(ToogleFavoutireItemStatusRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ToogleFavoutireItemStatusProvider._internal(
        (ref) => create(ref as ToogleFavoutireItemStatusRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        documentId: documentId,
        currentStatus: currentStatus,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _ToogleFavoutireItemStatusProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ToogleFavoutireItemStatusProvider &&
        other.documentId == documentId &&
        other.currentStatus == currentStatus;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, documentId.hashCode);
    hash = _SystemHash.combine(hash, currentStatus.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ToogleFavoutireItemStatusRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `documentId` of this provider.
  String get documentId;

  /// The parameter `currentStatus` of this provider.
  bool get currentStatus;
}

class _ToogleFavoutireItemStatusProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with ToogleFavoutireItemStatusRef {
  _ToogleFavoutireItemStatusProviderElement(super.provider);

  @override
  String get documentId =>
      (origin as ToogleFavoutireItemStatusProvider).documentId;
  @override
  bool get currentStatus =>
      (origin as ToogleFavoutireItemStatusProvider).currentStatus;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
