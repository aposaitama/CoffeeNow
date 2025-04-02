// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'has_active_order_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$hasActiveOrderHash() => r'517d3dad1b433520d5ebdd6ee8e86ada34ac74fd';

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

abstract class _$HasActiveOrder
    extends BuildlessAutoDisposeNotifier<List<ActiveOrderModel>> {
  late final String userID;

  List<ActiveOrderModel> build(
    String userID,
  );
}

/// See also [HasActiveOrder].
@ProviderFor(HasActiveOrder)
const hasActiveOrderProvider = HasActiveOrderFamily();

/// See also [HasActiveOrder].
class HasActiveOrderFamily extends Family<List<ActiveOrderModel>> {
  /// See also [HasActiveOrder].
  const HasActiveOrderFamily();

  /// See also [HasActiveOrder].
  HasActiveOrderProvider call(
    String userID,
  ) {
    return HasActiveOrderProvider(
      userID,
    );
  }

  @override
  HasActiveOrderProvider getProviderOverride(
    covariant HasActiveOrderProvider provider,
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
  String? get name => r'hasActiveOrderProvider';
}

/// See also [HasActiveOrder].
class HasActiveOrderProvider extends AutoDisposeNotifierProviderImpl<
    HasActiveOrder, List<ActiveOrderModel>> {
  /// See also [HasActiveOrder].
  HasActiveOrderProvider(
    String userID,
  ) : this._internal(
          () => HasActiveOrder()..userID = userID,
          from: hasActiveOrderProvider,
          name: r'hasActiveOrderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$hasActiveOrderHash,
          dependencies: HasActiveOrderFamily._dependencies,
          allTransitiveDependencies:
              HasActiveOrderFamily._allTransitiveDependencies,
          userID: userID,
        );

  HasActiveOrderProvider._internal(
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
  List<ActiveOrderModel> runNotifierBuild(
    covariant HasActiveOrder notifier,
  ) {
    return notifier.build(
      userID,
    );
  }

  @override
  Override overrideWith(HasActiveOrder Function() create) {
    return ProviderOverride(
      origin: this,
      override: HasActiveOrderProvider._internal(
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
  AutoDisposeNotifierProviderElement<HasActiveOrder, List<ActiveOrderModel>>
      createElement() {
    return _HasActiveOrderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HasActiveOrderProvider && other.userID == userID;
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
mixin HasActiveOrderRef
    on AutoDisposeNotifierProviderRef<List<ActiveOrderModel>> {
  /// The parameter `userID` of this provider.
  String get userID;
}

class _HasActiveOrderProviderElement extends AutoDisposeNotifierProviderElement<
    HasActiveOrder, List<ActiveOrderModel>> with HasActiveOrderRef {
  _HasActiveOrderProviderElement(super.provider);

  @override
  String get userID => (origin as HasActiveOrderProvider).userID;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
