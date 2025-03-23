// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_shop_info_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchShopIDHash() => r'baa3cf1ba48fa53e7837866d3ea9da715a69b631';

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

/// See also [fetchShopID].
@ProviderFor(fetchShopID)
const fetchShopIDProvider = FetchShopIDFamily();

/// See also [fetchShopID].
class FetchShopIDFamily extends Family<AsyncValue<String?>> {
  /// See also [fetchShopID].
  const FetchShopIDFamily();

  /// See also [fetchShopID].
  FetchShopIDProvider call(
    String documentID,
  ) {
    return FetchShopIDProvider(
      documentID,
    );
  }

  @override
  FetchShopIDProvider getProviderOverride(
    covariant FetchShopIDProvider provider,
  ) {
    return call(
      provider.documentID,
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
  String? get name => r'fetchShopIDProvider';
}

/// See also [fetchShopID].
class FetchShopIDProvider extends AutoDisposeFutureProvider<String?> {
  /// See also [fetchShopID].
  FetchShopIDProvider(
    String documentID,
  ) : this._internal(
          (ref) => fetchShopID(
            ref as FetchShopIDRef,
            documentID,
          ),
          from: fetchShopIDProvider,
          name: r'fetchShopIDProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchShopIDHash,
          dependencies: FetchShopIDFamily._dependencies,
          allTransitiveDependencies:
              FetchShopIDFamily._allTransitiveDependencies,
          documentID: documentID,
        );

  FetchShopIDProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.documentID,
  }) : super.internal();

  final String documentID;

  @override
  Override overrideWith(
    FutureOr<String?> Function(FetchShopIDRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchShopIDProvider._internal(
        (ref) => create(ref as FetchShopIDRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        documentID: documentID,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String?> createElement() {
    return _FetchShopIDProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchShopIDProvider && other.documentID == documentID;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, documentID.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FetchShopIDRef on AutoDisposeFutureProviderRef<String?> {
  /// The parameter `documentID` of this provider.
  String get documentID;
}

class _FetchShopIDProviderElement
    extends AutoDisposeFutureProviderElement<String?> with FetchShopIDRef {
  _FetchShopIDProviderElement(super.provider);

  @override
  String get documentID => (origin as FetchShopIDProvider).documentID;
}

String _$fetchLocationConcreteShopHash() =>
    r'4af3771fa152b2951ea025ae76539e53fdbc69f2';

/// See also [fetchLocationConcreteShop].
@ProviderFor(fetchLocationConcreteShop)
const fetchLocationConcreteShopProvider = FetchLocationConcreteShopFamily();

/// See also [fetchLocationConcreteShop].
class FetchLocationConcreteShopFamily extends Family<AsyncValue<List?>> {
  /// See also [fetchLocationConcreteShop].
  const FetchLocationConcreteShopFamily();

  /// See also [fetchLocationConcreteShop].
  FetchLocationConcreteShopProvider call(
    String coffeeShopID,
  ) {
    return FetchLocationConcreteShopProvider(
      coffeeShopID,
    );
  }

  @override
  FetchLocationConcreteShopProvider getProviderOverride(
    covariant FetchLocationConcreteShopProvider provider,
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
  String? get name => r'fetchLocationConcreteShopProvider';
}

/// See also [fetchLocationConcreteShop].
class FetchLocationConcreteShopProvider
    extends AutoDisposeFutureProvider<List?> {
  /// See also [fetchLocationConcreteShop].
  FetchLocationConcreteShopProvider(
    String coffeeShopID,
  ) : this._internal(
          (ref) => fetchLocationConcreteShop(
            ref as FetchLocationConcreteShopRef,
            coffeeShopID,
          ),
          from: fetchLocationConcreteShopProvider,
          name: r'fetchLocationConcreteShopProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchLocationConcreteShopHash,
          dependencies: FetchLocationConcreteShopFamily._dependencies,
          allTransitiveDependencies:
              FetchLocationConcreteShopFamily._allTransitiveDependencies,
          coffeeShopID: coffeeShopID,
        );

  FetchLocationConcreteShopProvider._internal(
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
    FutureOr<List?> Function(FetchLocationConcreteShopRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchLocationConcreteShopProvider._internal(
        (ref) => create(ref as FetchLocationConcreteShopRef),
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
  AutoDisposeFutureProviderElement<List?> createElement() {
    return _FetchLocationConcreteShopProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchLocationConcreteShopProvider &&
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
mixin FetchLocationConcreteShopRef on AutoDisposeFutureProviderRef<List?> {
  /// The parameter `coffeeShopID` of this provider.
  String get coffeeShopID;
}

class _FetchLocationConcreteShopProviderElement
    extends AutoDisposeFutureProviderElement<List?>
    with FetchLocationConcreteShopRef {
  _FetchLocationConcreteShopProviderElement(super.provider);

  @override
  String get coffeeShopID =>
      (origin as FetchLocationConcreteShopProvider).coffeeShopID;
}

String _$fetchDeliveryPriceHash() =>
    r'9012b25c5162916819b3655220b5b1e945fd9efc';

/// See also [fetchDeliveryPrice].
@ProviderFor(fetchDeliveryPrice)
final fetchDeliveryPriceProvider = AutoDisposeFutureProvider<double?>.internal(
  fetchDeliveryPrice,
  name: r'fetchDeliveryPriceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchDeliveryPriceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FetchDeliveryPriceRef = AutoDisposeFutureProviderRef<double?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
