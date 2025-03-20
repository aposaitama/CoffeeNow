// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_basic_info.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchConcreteCoffeeShopHash() =>
    r'6971cd8ef698cdef07fb43594c3d679c9aa516fd';

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

/// See also [fetchConcreteCoffeeShop].
@ProviderFor(fetchConcreteCoffeeShop)
const fetchConcreteCoffeeShopProvider = FetchConcreteCoffeeShopFamily();

/// See also [fetchConcreteCoffeeShop].
class FetchConcreteCoffeeShopFamily
    extends Family<AsyncValue<List<CoffeeShopModel>>> {
  /// See also [fetchConcreteCoffeeShop].
  const FetchConcreteCoffeeShopFamily();

  /// See also [fetchConcreteCoffeeShop].
  FetchConcreteCoffeeShopProvider call(
    String coffeeShopID,
  ) {
    return FetchConcreteCoffeeShopProvider(
      coffeeShopID,
    );
  }

  @override
  FetchConcreteCoffeeShopProvider getProviderOverride(
    covariant FetchConcreteCoffeeShopProvider provider,
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
  String? get name => r'fetchConcreteCoffeeShopProvider';
}

/// See also [fetchConcreteCoffeeShop].
class FetchConcreteCoffeeShopProvider
    extends AutoDisposeFutureProvider<List<CoffeeShopModel>> {
  /// See also [fetchConcreteCoffeeShop].
  FetchConcreteCoffeeShopProvider(
    String coffeeShopID,
  ) : this._internal(
          (ref) => fetchConcreteCoffeeShop(
            ref as FetchConcreteCoffeeShopRef,
            coffeeShopID,
          ),
          from: fetchConcreteCoffeeShopProvider,
          name: r'fetchConcreteCoffeeShopProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchConcreteCoffeeShopHash,
          dependencies: FetchConcreteCoffeeShopFamily._dependencies,
          allTransitiveDependencies:
              FetchConcreteCoffeeShopFamily._allTransitiveDependencies,
          coffeeShopID: coffeeShopID,
        );

  FetchConcreteCoffeeShopProvider._internal(
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
    FutureOr<List<CoffeeShopModel>> Function(
            FetchConcreteCoffeeShopRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchConcreteCoffeeShopProvider._internal(
        (ref) => create(ref as FetchConcreteCoffeeShopRef),
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
  AutoDisposeFutureProviderElement<List<CoffeeShopModel>> createElement() {
    return _FetchConcreteCoffeeShopProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchConcreteCoffeeShopProvider &&
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
mixin FetchConcreteCoffeeShopRef
    on AutoDisposeFutureProviderRef<List<CoffeeShopModel>> {
  /// The parameter `coffeeShopID` of this provider.
  String get coffeeShopID;
}

class _FetchConcreteCoffeeShopProviderElement
    extends AutoDisposeFutureProviderElement<List<CoffeeShopModel>>
    with FetchConcreteCoffeeShopRef {
  _FetchConcreteCoffeeShopProviderElement(super.provider);

  @override
  String get coffeeShopID =>
      (origin as FetchConcreteCoffeeShopProvider).coffeeShopID;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
