// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_hive_basket_box_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$basketBoxHash() => r'f3871cd8d6ddbdb1870b2d200ed64bea60250c62';

/// See also [basketBox].
@ProviderFor(basketBox)
final basketBoxProvider = AutoDisposeProvider<Box<BasketHiveModel>>.internal(
  basketBox,
  name: r'basketBoxProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$basketBoxHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef BasketBoxRef = AutoDisposeProviderRef<Box<BasketHiveModel>>;
String _$basketHiveHash() => r'fb0ec554a039771eaec48fb170a3be2f48a0b8c9';

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

abstract class _$BasketHive
    extends BuildlessAutoDisposeNotifier<BasketHiveModel?> {
  late final String userID;

  BasketHiveModel? build(
    String userID,
  );
}

/// See also [BasketHive].
@ProviderFor(BasketHive)
const basketHiveProvider = BasketHiveFamily();

/// See also [BasketHive].
class BasketHiveFamily extends Family<BasketHiveModel?> {
  /// See also [BasketHive].
  const BasketHiveFamily();

  /// See also [BasketHive].
  BasketHiveProvider call(
    String userID,
  ) {
    return BasketHiveProvider(
      userID,
    );
  }

  @override
  BasketHiveProvider getProviderOverride(
    covariant BasketHiveProvider provider,
  ) {
    return call(
      provider.userID,
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
  String? get name => r'basketHiveProvider';
}

/// See also [BasketHive].
class BasketHiveProvider
    extends AutoDisposeNotifierProviderImpl<BasketHive, BasketHiveModel?> {
  /// See also [BasketHive].
  BasketHiveProvider(
    String userID,
  ) : this._internal(
          () => BasketHive()..userID = userID,
          from: basketHiveProvider,
          name: r'basketHiveProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$basketHiveHash,
          dependencies: BasketHiveFamily._dependencies,
          allTransitiveDependencies:
              BasketHiveFamily._allTransitiveDependencies,
          userID: userID,
        );

  BasketHiveProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userID,
  }) : super.internal();

  final String userID;

  @override
  BasketHiveModel? runNotifierBuild(
    covariant BasketHive notifier,
  ) {
    return notifier.build(
      userID,
    );
  }

  @override
  Override overrideWith(BasketHive Function() create) {
    return ProviderOverride(
      origin: this,
      override: BasketHiveProvider._internal(
        () => create()..userID = userID,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userID: userID,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<BasketHive, BasketHiveModel?>
      createElement() {
    return _BasketHiveProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BasketHiveProvider && other.userID == userID;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userID.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin BasketHiveRef on AutoDisposeNotifierProviderRef<BasketHiveModel?> {
  /// The parameter `userID` of this provider.
  String get userID;
}

class _BasketHiveProviderElement
    extends AutoDisposeNotifierProviderElement<BasketHive, BasketHiveModel?>
    with BasketHiveRef {
  _BasketHiveProviderElement(super.provider);

  @override
  String get userID => (origin as BasketHiveProvider).userID;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
