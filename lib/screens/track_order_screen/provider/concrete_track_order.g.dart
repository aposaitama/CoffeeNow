// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'concrete_track_order.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$concreteTrackOrderHash() =>
    r'050fcfedbcd5196bd30a15e1bba43d52bf8d19ec';

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

abstract class _$ConcreteTrackOrder
    extends BuildlessAutoDisposeNotifier<ActiveOrderModel?> {
  late final String documentID;

  ActiveOrderModel? build(
    String documentID,
  );
}

/// See also [ConcreteTrackOrder].
@ProviderFor(ConcreteTrackOrder)
const concreteTrackOrderProvider = ConcreteTrackOrderFamily();

/// See also [ConcreteTrackOrder].
class ConcreteTrackOrderFamily extends Family<ActiveOrderModel?> {
  /// See also [ConcreteTrackOrder].
  const ConcreteTrackOrderFamily();

  /// See also [ConcreteTrackOrder].
  ConcreteTrackOrderProvider call(
    String documentID,
  ) {
    return ConcreteTrackOrderProvider(
      documentID,
    );
  }

  @override
  ConcreteTrackOrderProvider getProviderOverride(
    covariant ConcreteTrackOrderProvider provider,
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
  String? get name => r'concreteTrackOrderProvider';
}

/// See also [ConcreteTrackOrder].
class ConcreteTrackOrderProvider extends AutoDisposeNotifierProviderImpl<
    ConcreteTrackOrder, ActiveOrderModel?> {
  /// See also [ConcreteTrackOrder].
  ConcreteTrackOrderProvider(
    String documentID,
  ) : this._internal(
          () => ConcreteTrackOrder()..documentID = documentID,
          from: concreteTrackOrderProvider,
          name: r'concreteTrackOrderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$concreteTrackOrderHash,
          dependencies: ConcreteTrackOrderFamily._dependencies,
          allTransitiveDependencies:
              ConcreteTrackOrderFamily._allTransitiveDependencies,
          documentID: documentID,
        );

  ConcreteTrackOrderProvider._internal(
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
  ActiveOrderModel? runNotifierBuild(
    covariant ConcreteTrackOrder notifier,
  ) {
    return notifier.build(
      documentID,
    );
  }

  @override
  Override overrideWith(ConcreteTrackOrder Function() create) {
    return ProviderOverride(
      origin: this,
      override: ConcreteTrackOrderProvider._internal(
        () => create()..documentID = documentID,
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
  AutoDisposeNotifierProviderElement<ConcreteTrackOrder, ActiveOrderModel?>
      createElement() {
    return _ConcreteTrackOrderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ConcreteTrackOrderProvider &&
        other.documentID == documentID;
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
mixin ConcreteTrackOrderRef
    on AutoDisposeNotifierProviderRef<ActiveOrderModel?> {
  /// The parameter `documentID` of this provider.
  String get documentID;
}

class _ConcreteTrackOrderProviderElement
    extends AutoDisposeNotifierProviderElement<ConcreteTrackOrder,
        ActiveOrderModel?> with ConcreteTrackOrderRef {
  _ConcreteTrackOrderProviderElement(super.provider);

  @override
  String get documentID => (origin as ConcreteTrackOrderProvider).documentID;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
