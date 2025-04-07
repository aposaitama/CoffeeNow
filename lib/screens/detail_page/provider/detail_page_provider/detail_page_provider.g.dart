// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_page_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchDetailedCoffeeShopHash() =>
    r'4e8ea5b5d1b7387736aa7be949e959aecc4bf86f';

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

/// See also [fetchDetailedCoffeeShop].
@ProviderFor(fetchDetailedCoffeeShop)
const fetchDetailedCoffeeShopProvider = FetchDetailedCoffeeShopFamily();

/// See also [fetchDetailedCoffeeShop].
class FetchDetailedCoffeeShopFamily
    extends Family<AsyncValue<DetailedCoffeeShopModel?>> {
  /// See also [fetchDetailedCoffeeShop].
  const FetchDetailedCoffeeShopFamily();

  /// See also [fetchDetailedCoffeeShop].
  FetchDetailedCoffeeShopProvider call(
    String coffeeShopID,
  ) {
    return FetchDetailedCoffeeShopProvider(
      coffeeShopID,
    );
  }

  @override
  FetchDetailedCoffeeShopProvider getProviderOverride(
    covariant FetchDetailedCoffeeShopProvider provider,
  ) {
    return call(
      provider.coffeeShopID,
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
  String? get name => r'fetchDetailedCoffeeShopProvider';
}

/// See also [fetchDetailedCoffeeShop].
class FetchDetailedCoffeeShopProvider
    extends AutoDisposeFutureProvider<DetailedCoffeeShopModel?> {
  /// See also [fetchDetailedCoffeeShop].
  FetchDetailedCoffeeShopProvider(
    String coffeeShopID,
  ) : this._internal(
          (ref) => fetchDetailedCoffeeShop(
            ref as FetchDetailedCoffeeShopRef,
            coffeeShopID,
          ),
          from: fetchDetailedCoffeeShopProvider,
          name: r'fetchDetailedCoffeeShopProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchDetailedCoffeeShopHash,
          dependencies: FetchDetailedCoffeeShopFamily._dependencies,
          allTransitiveDependencies:
              FetchDetailedCoffeeShopFamily._allTransitiveDependencies,
          coffeeShopID: coffeeShopID,
        );

  FetchDetailedCoffeeShopProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.coffeeShopID,
  }) : super.internal();

  final String coffeeShopID;

  @override
  Override overrideWith(
    FutureOr<DetailedCoffeeShopModel?> Function(
            FetchDetailedCoffeeShopRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchDetailedCoffeeShopProvider._internal(
        (ref) => create(ref as FetchDetailedCoffeeShopRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        coffeeShopID: coffeeShopID,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<DetailedCoffeeShopModel?> createElement() {
    return _FetchDetailedCoffeeShopProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchDetailedCoffeeShopProvider &&
        other.coffeeShopID == coffeeShopID;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, coffeeShopID.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FetchDetailedCoffeeShopRef
    on AutoDisposeFutureProviderRef<DetailedCoffeeShopModel?> {
  /// The parameter `coffeeShopID` of this provider.
  String get coffeeShopID;
}

class _FetchDetailedCoffeeShopProviderElement
    extends AutoDisposeFutureProviderElement<DetailedCoffeeShopModel?>
    with FetchDetailedCoffeeShopRef {
  _FetchDetailedCoffeeShopProviderElement(super.provider);

  @override
  String get coffeeShopID =>
      (origin as FetchDetailedCoffeeShopProvider).coffeeShopID;
}

String _$fetchCoffeeShopOrderCountHash() =>
    r'cc2daf6917bc69e349db48fc704abdb7a99ac6ac';

/// See also [fetchCoffeeShopOrderCount].
@ProviderFor(fetchCoffeeShopOrderCount)
const fetchCoffeeShopOrderCountProvider = FetchCoffeeShopOrderCountFamily();

/// See also [fetchCoffeeShopOrderCount].
class FetchCoffeeShopOrderCountFamily extends Family<AsyncValue<int?>> {
  /// See also [fetchCoffeeShopOrderCount].
  const FetchCoffeeShopOrderCountFamily();

  /// See also [fetchCoffeeShopOrderCount].
  FetchCoffeeShopOrderCountProvider call(
    String coffeeShopID,
  ) {
    return FetchCoffeeShopOrderCountProvider(
      coffeeShopID,
    );
  }

  @override
  FetchCoffeeShopOrderCountProvider getProviderOverride(
    covariant FetchCoffeeShopOrderCountProvider provider,
  ) {
    return call(
      provider.coffeeShopID,
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
  String? get name => r'fetchCoffeeShopOrderCountProvider';
}

/// See also [fetchCoffeeShopOrderCount].
class FetchCoffeeShopOrderCountProvider
    extends AutoDisposeFutureProvider<int?> {
  /// See also [fetchCoffeeShopOrderCount].
  FetchCoffeeShopOrderCountProvider(
    String coffeeShopID,
  ) : this._internal(
          (ref) => fetchCoffeeShopOrderCount(
            ref as FetchCoffeeShopOrderCountRef,
            coffeeShopID,
          ),
          from: fetchCoffeeShopOrderCountProvider,
          name: r'fetchCoffeeShopOrderCountProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchCoffeeShopOrderCountHash,
          dependencies: FetchCoffeeShopOrderCountFamily._dependencies,
          allTransitiveDependencies:
              FetchCoffeeShopOrderCountFamily._allTransitiveDependencies,
          coffeeShopID: coffeeShopID,
        );

  FetchCoffeeShopOrderCountProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.coffeeShopID,
  }) : super.internal();

  final String coffeeShopID;

  @override
  Override overrideWith(
    FutureOr<int?> Function(FetchCoffeeShopOrderCountRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchCoffeeShopOrderCountProvider._internal(
        (ref) => create(ref as FetchCoffeeShopOrderCountRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        coffeeShopID: coffeeShopID,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<int?> createElement() {
    return _FetchCoffeeShopOrderCountProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchCoffeeShopOrderCountProvider &&
        other.coffeeShopID == coffeeShopID;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, coffeeShopID.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FetchCoffeeShopOrderCountRef on AutoDisposeFutureProviderRef<int?> {
  /// The parameter `coffeeShopID` of this provider.
  String get coffeeShopID;
}

class _FetchCoffeeShopOrderCountProviderElement
    extends AutoDisposeFutureProviderElement<int?>
    with FetchCoffeeShopOrderCountRef {
  _FetchCoffeeShopOrderCountProviderElement(super.provider);

  @override
  String get coffeeShopID =>
      (origin as FetchCoffeeShopOrderCountProvider).coffeeShopID;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
