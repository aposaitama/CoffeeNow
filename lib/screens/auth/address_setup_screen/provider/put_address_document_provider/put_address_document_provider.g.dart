// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_address_document_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$putAddressDocHash() => r'c9e7f2558c33a3f0eb3877d7f8900ff135fb7ea9';

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

/// See also [putAddressDoc].
@ProviderFor(putAddressDoc)
const putAddressDocProvider = PutAddressDocFamily();

/// See also [putAddressDoc].
class PutAddressDocFamily extends Family<AsyncValue<String?>> {
  /// See also [putAddressDoc].
  const PutAddressDocFamily();

  /// See also [putAddressDoc].
  PutAddressDocProvider call(
    String lat,
    String lng,
  ) {
    return PutAddressDocProvider(
      lat,
      lng,
    );
  }

  @override
  PutAddressDocProvider getProviderOverride(
    covariant PutAddressDocProvider provider,
  ) {
    return call(
      provider.lat,
      provider.lng,
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
  String? get name => r'putAddressDocProvider';
}

/// See also [putAddressDoc].
class PutAddressDocProvider extends AutoDisposeFutureProvider<String?> {
  /// See also [putAddressDoc].
  PutAddressDocProvider(
    String lat,
    String lng,
  ) : this._internal(
          (ref) => putAddressDoc(
            ref as PutAddressDocRef,
            lat,
            lng,
          ),
          from: putAddressDocProvider,
          name: r'putAddressDocProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$putAddressDocHash,
          dependencies: PutAddressDocFamily._dependencies,
          allTransitiveDependencies:
              PutAddressDocFamily._allTransitiveDependencies,
          lat: lat,
          lng: lng,
        );

  PutAddressDocProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.lat,
    required this.lng,
  }) : super.internal();

  final String lat;
  final String lng;

  @override
  Override overrideWith(
    FutureOr<String?> Function(PutAddressDocRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PutAddressDocProvider._internal(
        (ref) => create(ref as PutAddressDocRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        lat: lat,
        lng: lng,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String?> createElement() {
    return _PutAddressDocProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PutAddressDocProvider &&
        other.lat == lat &&
        other.lng == lng;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, lat.hashCode);
    hash = _SystemHash.combine(hash, lng.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PutAddressDocRef on AutoDisposeFutureProviderRef<String?> {
  /// The parameter `lat` of this provider.
  String get lat;

  /// The parameter `lng` of this provider.
  String get lng;
}

class _PutAddressDocProviderElement
    extends AutoDisposeFutureProviderElement<String?> with PutAddressDocRef {
  _PutAddressDocProviderElement(super.provider);

  @override
  String get lat => (origin as PutAddressDocProvider).lat;
  @override
  String get lng => (origin as PutAddressDocProvider).lng;
}

String _$connectAddressDocHash() => r'6b2af76303d019569814926b510953dd655db9f2';

/// See also [connectAddressDoc].
@ProviderFor(connectAddressDoc)
const connectAddressDocProvider = ConnectAddressDocFamily();

/// See also [connectAddressDoc].
class ConnectAddressDocFamily extends Family<AsyncValue<String?>> {
  /// See also [connectAddressDoc].
  const ConnectAddressDocFamily();

  /// See also [connectAddressDoc].
  ConnectAddressDocProvider call(
    String id,
    String userID,
  ) {
    return ConnectAddressDocProvider(
      id,
      userID,
    );
  }

  @override
  ConnectAddressDocProvider getProviderOverride(
    covariant ConnectAddressDocProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'connectAddressDocProvider';
}

/// See also [connectAddressDoc].
class ConnectAddressDocProvider extends AutoDisposeFutureProvider<String?> {
  /// See also [connectAddressDoc].
  ConnectAddressDocProvider(
    String id,
    String userID,
  ) : this._internal(
          (ref) => connectAddressDoc(
            ref as ConnectAddressDocRef,
            id,
            userID,
          ),
          from: connectAddressDocProvider,
          name: r'connectAddressDocProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$connectAddressDocHash,
          dependencies: ConnectAddressDocFamily._dependencies,
          allTransitiveDependencies:
              ConnectAddressDocFamily._allTransitiveDependencies,
          id: id,
          userID: userID,
        );

  ConnectAddressDocProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.userID,
  }) : super.internal();

  final String id;
  final String userID;

  @override
  Override overrideWith(
    FutureOr<String?> Function(ConnectAddressDocRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ConnectAddressDocProvider._internal(
        (ref) => create(ref as ConnectAddressDocRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        userID: userID,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String?> createElement() {
    return _ConnectAddressDocProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ConnectAddressDocProvider &&
        other.id == id &&
        other.userID == userID;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, userID.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ConnectAddressDocRef on AutoDisposeFutureProviderRef<String?> {
  /// The parameter `id` of this provider.
  String get id;

  /// The parameter `userID` of this provider.
  String get userID;
}

class _ConnectAddressDocProviderElement
    extends AutoDisposeFutureProviderElement<String?>
    with ConnectAddressDocRef {
  _ConnectAddressDocProviderElement(super.provider);

  @override
  String get id => (origin as ConnectAddressDocProvider).id;
  @override
  String get userID => (origin as ConnectAddressDocProvider).userID;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
