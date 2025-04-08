// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_filtered_product_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchFilteredProductsHash() =>
    r'8022e04a0f024cf5e16d1d68292f169ae7e3d328';

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

/// See also [fetchFilteredProducts].
@ProviderFor(fetchFilteredProducts)
const fetchFilteredProductsProvider = FetchFilteredProductsFamily();

/// See also [fetchFilteredProducts].
class FetchFilteredProductsFamily
    extends Family<AsyncValue<List<CoffeeShopProducts?>>> {
  /// See also [fetchFilteredProducts].
  const FetchFilteredProductsFamily();

  /// See also [fetchFilteredProducts].
  FetchFilteredProductsProvider call(
    String query,
  ) {
    return FetchFilteredProductsProvider(
      query,
    );
  }

  @override
  FetchFilteredProductsProvider getProviderOverride(
    covariant FetchFilteredProductsProvider provider,
  ) {
    return call(
      provider.query,
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
  String? get name => r'fetchFilteredProductsProvider';
}

/// See also [fetchFilteredProducts].
class FetchFilteredProductsProvider
    extends AutoDisposeFutureProvider<List<CoffeeShopProducts?>> {
  /// See also [fetchFilteredProducts].
  FetchFilteredProductsProvider(
    String query,
  ) : this._internal(
          (ref) => fetchFilteredProducts(
            ref as FetchFilteredProductsRef,
            query,
          ),
          from: fetchFilteredProductsProvider,
          name: r'fetchFilteredProductsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchFilteredProductsHash,
          dependencies: FetchFilteredProductsFamily._dependencies,
          allTransitiveDependencies:
              FetchFilteredProductsFamily._allTransitiveDependencies,
          query: query,
        );

  FetchFilteredProductsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
  }) : super.internal();

  final String query;

  @override
  Override overrideWith(
    FutureOr<List<CoffeeShopProducts?>> Function(
            FetchFilteredProductsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchFilteredProductsProvider._internal(
        (ref) => create(ref as FetchFilteredProductsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<CoffeeShopProducts?>> createElement() {
    return _FetchFilteredProductsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchFilteredProductsProvider && other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FetchFilteredProductsRef
    on AutoDisposeFutureProviderRef<List<CoffeeShopProducts?>> {
  /// The parameter `query` of this provider.
  String get query;
}

class _FetchFilteredProductsProviderElement
    extends AutoDisposeFutureProviderElement<List<CoffeeShopProducts?>>
    with FetchFilteredProductsRef {
  _FetchFilteredProductsProviderElement(super.provider);

  @override
  String get query => (origin as FetchFilteredProductsProvider).query;
}

String _$fetchFilteredProductsWithCategoryHash() =>
    r'2784ebbe354486e9432eea680edcf549bb394138';

/// See also [fetchFilteredProductsWithCategory].
@ProviderFor(fetchFilteredProductsWithCategory)
const fetchFilteredProductsWithCategoryProvider =
    FetchFilteredProductsWithCategoryFamily();

/// See also [fetchFilteredProductsWithCategory].
class FetchFilteredProductsWithCategoryFamily
    extends Family<AsyncValue<List<CoffeeShopProducts?>>> {
  /// See also [fetchFilteredProductsWithCategory].
  const FetchFilteredProductsWithCategoryFamily();

  /// See also [fetchFilteredProductsWithCategory].
  FetchFilteredProductsWithCategoryProvider call(
    String categoryName,
  ) {
    return FetchFilteredProductsWithCategoryProvider(
      categoryName,
    );
  }

  @override
  FetchFilteredProductsWithCategoryProvider getProviderOverride(
    covariant FetchFilteredProductsWithCategoryProvider provider,
  ) {
    return call(
      provider.categoryName,
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
  String? get name => r'fetchFilteredProductsWithCategoryProvider';
}

/// See also [fetchFilteredProductsWithCategory].
class FetchFilteredProductsWithCategoryProvider
    extends AutoDisposeFutureProvider<List<CoffeeShopProducts?>> {
  /// See also [fetchFilteredProductsWithCategory].
  FetchFilteredProductsWithCategoryProvider(
    String categoryName,
  ) : this._internal(
          (ref) => fetchFilteredProductsWithCategory(
            ref as FetchFilteredProductsWithCategoryRef,
            categoryName,
          ),
          from: fetchFilteredProductsWithCategoryProvider,
          name: r'fetchFilteredProductsWithCategoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchFilteredProductsWithCategoryHash,
          dependencies: FetchFilteredProductsWithCategoryFamily._dependencies,
          allTransitiveDependencies: FetchFilteredProductsWithCategoryFamily
              ._allTransitiveDependencies,
          categoryName: categoryName,
        );

  FetchFilteredProductsWithCategoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.categoryName,
  }) : super.internal();

  final String categoryName;

  @override
  Override overrideWith(
    FutureOr<List<CoffeeShopProducts?>> Function(
            FetchFilteredProductsWithCategoryRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchFilteredProductsWithCategoryProvider._internal(
        (ref) => create(ref as FetchFilteredProductsWithCategoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        categoryName: categoryName,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<CoffeeShopProducts?>> createElement() {
    return _FetchFilteredProductsWithCategoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchFilteredProductsWithCategoryProvider &&
        other.categoryName == categoryName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, categoryName.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FetchFilteredProductsWithCategoryRef
    on AutoDisposeFutureProviderRef<List<CoffeeShopProducts?>> {
  /// The parameter `categoryName` of this provider.
  String get categoryName;
}

class _FetchFilteredProductsWithCategoryProviderElement
    extends AutoDisposeFutureProviderElement<List<CoffeeShopProducts?>>
    with FetchFilteredProductsWithCategoryRef {
  _FetchFilteredProductsWithCategoryProviderElement(super.provider);

  @override
  String get categoryName =>
      (origin as FetchFilteredProductsWithCategoryProvider).categoryName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
