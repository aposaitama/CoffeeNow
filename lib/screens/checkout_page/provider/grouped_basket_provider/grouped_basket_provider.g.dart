// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grouped_basket_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$groupProductsByShopHash() =>
    r'22ab3d5feb34761099b03c74329f5461fcd7cf02';

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

/// See also [groupProductsByShop].
@ProviderFor(groupProductsByShop)
const groupProductsByShopProvider = GroupProductsByShopFamily();

/// See also [groupProductsByShop].
class GroupProductsByShopFamily
    extends Family<AsyncValue<Map<String, List<BasketItemHiveModel>>>> {
  /// See also [groupProductsByShop].
  const GroupProductsByShopFamily();

  /// See also [groupProductsByShop].
  GroupProductsByShopProvider call(
    List<BasketItemHiveModel> basketItems,
  ) {
    return GroupProductsByShopProvider(
      basketItems,
    );
  }

  @override
  GroupProductsByShopProvider getProviderOverride(
    covariant GroupProductsByShopProvider provider,
  ) {
    return call(
      provider.basketItems,
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
  String? get name => r'groupProductsByShopProvider';
}

/// See also [groupProductsByShop].
class GroupProductsByShopProvider
    extends AutoDisposeFutureProvider<Map<String, List<BasketItemHiveModel>>> {
  /// See also [groupProductsByShop].
  GroupProductsByShopProvider(
    List<BasketItemHiveModel> basketItems,
  ) : this._internal(
          (ref) => groupProductsByShop(
            ref as GroupProductsByShopRef,
            basketItems,
          ),
          from: groupProductsByShopProvider,
          name: r'groupProductsByShopProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$groupProductsByShopHash,
          dependencies: GroupProductsByShopFamily._dependencies,
          allTransitiveDependencies:
              GroupProductsByShopFamily._allTransitiveDependencies,
          basketItems: basketItems,
        );

  GroupProductsByShopProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.basketItems,
  }) : super.internal();

  final List<BasketItemHiveModel> basketItems;

  @override
  Override overrideWith(
    FutureOr<Map<String, List<BasketItemHiveModel>>> Function(
            GroupProductsByShopRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GroupProductsByShopProvider._internal(
        (ref) => create(ref as GroupProductsByShopRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        basketItems: basketItems,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Map<String, List<BasketItemHiveModel>>>
      createElement() {
    return _GroupProductsByShopProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GroupProductsByShopProvider &&
        other.basketItems == basketItems;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, basketItems.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GroupProductsByShopRef
    on AutoDisposeFutureProviderRef<Map<String, List<BasketItemHiveModel>>> {
  /// The parameter `basketItems` of this provider.
  List<BasketItemHiveModel> get basketItems;
}

class _GroupProductsByShopProviderElement
    extends AutoDisposeFutureProviderElement<
        Map<String, List<BasketItemHiveModel>>> with GroupProductsByShopRef {
  _GroupProductsByShopProviderElement(super.provider);

  @override
  List<BasketItemHiveModel> get basketItems =>
      (origin as GroupProductsByShopProvider).basketItems;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
