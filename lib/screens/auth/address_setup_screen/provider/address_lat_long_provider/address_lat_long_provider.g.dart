// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_lat_long_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchLatLongHash() => r'8185fa0766315aa8a3fff0935e3309bc18796f80';

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

/// See also [fetchLatLong].
@ProviderFor(fetchLatLong)
const fetchLatLongProvider = FetchLatLongFamily();

/// See also [fetchLatLong].
class FetchLatLongFamily extends Family<AsyncValue<GeocodeResponse?>> {
  /// See also [fetchLatLong].
  const FetchLatLongFamily();

  /// See also [fetchLatLong].
  FetchLatLongProvider call(
    String address,
  ) {
    return FetchLatLongProvider(
      address,
    );
  }

  @override
  FetchLatLongProvider getProviderOverride(
    covariant FetchLatLongProvider provider,
  ) {
    return call(
      provider.address,
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
  String? get name => r'fetchLatLongProvider';
}

/// See also [fetchLatLong].
class FetchLatLongProvider extends AutoDisposeFutureProvider<GeocodeResponse?> {
  /// See also [fetchLatLong].
  FetchLatLongProvider(
    String address,
  ) : this._internal(
          (ref) => fetchLatLong(
            ref as FetchLatLongRef,
            address,
          ),
          from: fetchLatLongProvider,
          name: r'fetchLatLongProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchLatLongHash,
          dependencies: FetchLatLongFamily._dependencies,
          allTransitiveDependencies:
              FetchLatLongFamily._allTransitiveDependencies,
          address: address,
        );

  FetchLatLongProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.address,
  }) : super.internal();

  final String address;

  @override
  Override overrideWith(
    FutureOr<GeocodeResponse?> Function(FetchLatLongRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchLatLongProvider._internal(
        (ref) => create(ref as FetchLatLongRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        address: address,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<GeocodeResponse?> createElement() {
    return _FetchLatLongProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchLatLongProvider && other.address == address;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, address.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FetchLatLongRef on AutoDisposeFutureProviderRef<GeocodeResponse?> {
  /// The parameter `address` of this provider.
  String get address;
}

class _FetchLatLongProviderElement
    extends AutoDisposeFutureProviderElement<GeocodeResponse?>
    with FetchLatLongRef {
  _FetchLatLongProviderElement(super.provider);

  @override
  String get address => (origin as FetchLatLongProvider).address;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
