// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_polylines_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchShopsWithDistanceHash() =>
    r'a499818e630b670e496846f46fc62e8c2c09c5b2';

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

/// See also [fetchShopsWithDistance].
@ProviderFor(fetchShopsWithDistance)
const fetchShopsWithDistanceProvider = FetchShopsWithDistanceFamily();

/// See also [fetchShopsWithDistance].
class FetchShopsWithDistanceFamily
    extends Family<AsyncValue<Map<PolylineId, Polyline>?>> {
  /// See also [fetchShopsWithDistance].
  const FetchShopsWithDistanceFamily();

  /// See also [fetchShopsWithDistance].
  FetchShopsWithDistanceProvider call(
    Map<String, List<String>> shopLocationMap,
    String userLat,
    String userLng,
  ) {
    return FetchShopsWithDistanceProvider(
      shopLocationMap,
      userLat,
      userLng,
    );
  }

  @override
  FetchShopsWithDistanceProvider getProviderOverride(
    covariant FetchShopsWithDistanceProvider provider,
  ) {
    return call(
      provider.shopLocationMap,
      provider.userLat,
      provider.userLng,
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
  String? get name => r'fetchShopsWithDistanceProvider';
}

/// See also [fetchShopsWithDistance].
class FetchShopsWithDistanceProvider
    extends AutoDisposeFutureProvider<Map<PolylineId, Polyline>?> {
  /// See also [fetchShopsWithDistance].
  FetchShopsWithDistanceProvider(
    Map<String, List<String>> shopLocationMap,
    String userLat,
    String userLng,
  ) : this._internal(
          (ref) => fetchShopsWithDistance(
            ref as FetchShopsWithDistanceRef,
            shopLocationMap,
            userLat,
            userLng,
          ),
          from: fetchShopsWithDistanceProvider,
          name: r'fetchShopsWithDistanceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchShopsWithDistanceHash,
          dependencies: FetchShopsWithDistanceFamily._dependencies,
          allTransitiveDependencies:
              FetchShopsWithDistanceFamily._allTransitiveDependencies,
          shopLocationMap: shopLocationMap,
          userLat: userLat,
          userLng: userLng,
        );

  FetchShopsWithDistanceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.shopLocationMap,
    required this.userLat,
    required this.userLng,
  }) : super.internal();

  final Map<String, List<String>> shopLocationMap;
  final String userLat;
  final String userLng;

  @override
  Override overrideWith(
    FutureOr<Map<PolylineId, Polyline>?> Function(
            FetchShopsWithDistanceRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchShopsWithDistanceProvider._internal(
        (ref) => create(ref as FetchShopsWithDistanceRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        shopLocationMap: shopLocationMap,
        userLat: userLat,
        userLng: userLng,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Map<PolylineId, Polyline>?> createElement() {
    return _FetchShopsWithDistanceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchShopsWithDistanceProvider &&
        other.shopLocationMap == shopLocationMap &&
        other.userLat == userLat &&
        other.userLng == userLng;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, shopLocationMap.hashCode);
    hash = _SystemHash.combine(hash, userLat.hashCode);
    hash = _SystemHash.combine(hash, userLng.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FetchShopsWithDistanceRef
    on AutoDisposeFutureProviderRef<Map<PolylineId, Polyline>?> {
  /// The parameter `shopLocationMap` of this provider.
  Map<String, List<String>> get shopLocationMap;

  /// The parameter `userLat` of this provider.
  String get userLat;

  /// The parameter `userLng` of this provider.
  String get userLng;
}

class _FetchShopsWithDistanceProviderElement
    extends AutoDisposeFutureProviderElement<Map<PolylineId, Polyline>?>
    with FetchShopsWithDistanceRef {
  _FetchShopsWithDistanceProviderElement(super.provider);

  @override
  Map<String, List<String>> get shopLocationMap =>
      (origin as FetchShopsWithDistanceProvider).shopLocationMap;
  @override
  String get userLat => (origin as FetchShopsWithDistanceProvider).userLat;
  @override
  String get userLng => (origin as FetchShopsWithDistanceProvider).userLng;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
