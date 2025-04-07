// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchLocationHash() => r'7e9da6d72023daff0bf52fcc689281ece8cd2cbb';

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

/// See also [fetchLocation].
@ProviderFor(fetchLocation)
const fetchLocationProvider = FetchLocationFamily();

/// See also [fetchLocation].
class FetchLocationFamily extends Family<AsyncValue<LocationResponse?>> {
  /// See also [fetchLocation].
  const FetchLocationFamily();

  /// See also [fetchLocation].
  FetchLocationProvider call(
    String lat,
    String lng,
  ) {
    return FetchLocationProvider(
      lat,
      lng,
    );
  }

  @override
  FetchLocationProvider getProviderOverride(
    covariant FetchLocationProvider provider,
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
  String? get name => r'fetchLocationProvider';
}

/// See also [fetchLocation].
class FetchLocationProvider
    extends AutoDisposeFutureProvider<LocationResponse?> {
  /// See also [fetchLocation].
  FetchLocationProvider(
    String lat,
    String lng,
  ) : this._internal(
          (ref) => fetchLocation(
            ref as FetchLocationRef,
            lat,
            lng,
          ),
          from: fetchLocationProvider,
          name: r'fetchLocationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchLocationHash,
          dependencies: FetchLocationFamily._dependencies,
          allTransitiveDependencies:
              FetchLocationFamily._allTransitiveDependencies,
          lat: lat,
          lng: lng,
        );

  FetchLocationProvider._internal(
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
    FutureOr<LocationResponse?> Function(FetchLocationRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchLocationProvider._internal(
        (ref) => create(ref as FetchLocationRef),
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
  AutoDisposeFutureProviderElement<LocationResponse?> createElement() {
    return _FetchLocationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchLocationProvider &&
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
mixin FetchLocationRef on AutoDisposeFutureProviderRef<LocationResponse?> {
  /// The parameter `lat` of this provider.
  String get lat;

  /// The parameter `lng` of this provider.
  String get lng;
}

class _FetchLocationProviderElement
    extends AutoDisposeFutureProviderElement<LocationResponse?>
    with FetchLocationRef {
  _FetchLocationProviderElement(super.provider);

  @override
  String get lat => (origin as FetchLocationProvider).lat;
  @override
  String get lng => (origin as FetchLocationProvider).lng;
}

String _$fetchDistanceHash() => r'62fbdf5f8112a0c169ecf4028b247dc378a6e067';

/// See also [fetchDistance].
@ProviderFor(fetchDistance)
const fetchDistanceProvider = FetchDistanceFamily();

/// See also [fetchDistance].
class FetchDistanceFamily extends Family<AsyncValue<String?>> {
  /// See also [fetchDistance].
  const FetchDistanceFamily();

  /// See also [fetchDistance].
  FetchDistanceProvider call(
    String latOrigin,
    String lngOrigin,
    String latShop,
    String lngShop,
  ) {
    return FetchDistanceProvider(
      latOrigin,
      lngOrigin,
      latShop,
      lngShop,
    );
  }

  @override
  FetchDistanceProvider getProviderOverride(
    covariant FetchDistanceProvider provider,
  ) {
    return call(
      provider.latOrigin,
      provider.lngOrigin,
      provider.latShop,
      provider.lngShop,
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
  String? get name => r'fetchDistanceProvider';
}

/// See also [fetchDistance].
class FetchDistanceProvider extends AutoDisposeFutureProvider<String?> {
  /// See also [fetchDistance].
  FetchDistanceProvider(
    String latOrigin,
    String lngOrigin,
    String latShop,
    String lngShop,
  ) : this._internal(
          (ref) => fetchDistance(
            ref as FetchDistanceRef,
            latOrigin,
            lngOrigin,
            latShop,
            lngShop,
          ),
          from: fetchDistanceProvider,
          name: r'fetchDistanceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchDistanceHash,
          dependencies: FetchDistanceFamily._dependencies,
          allTransitiveDependencies:
              FetchDistanceFamily._allTransitiveDependencies,
          latOrigin: latOrigin,
          lngOrigin: lngOrigin,
          latShop: latShop,
          lngShop: lngShop,
        );

  FetchDistanceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.latOrigin,
    required this.lngOrigin,
    required this.latShop,
    required this.lngShop,
  }) : super.internal();

  final String latOrigin;
  final String lngOrigin;
  final String latShop;
  final String lngShop;

  @override
  Override overrideWith(
    FutureOr<String?> Function(FetchDistanceRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchDistanceProvider._internal(
        (ref) => create(ref as FetchDistanceRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        latOrigin: latOrigin,
        lngOrigin: lngOrigin,
        latShop: latShop,
        lngShop: lngShop,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String?> createElement() {
    return _FetchDistanceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchDistanceProvider &&
        other.latOrigin == latOrigin &&
        other.lngOrigin == lngOrigin &&
        other.latShop == latShop &&
        other.lngShop == lngShop;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, latOrigin.hashCode);
    hash = _SystemHash.combine(hash, lngOrigin.hashCode);
    hash = _SystemHash.combine(hash, latShop.hashCode);
    hash = _SystemHash.combine(hash, lngShop.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FetchDistanceRef on AutoDisposeFutureProviderRef<String?> {
  /// The parameter `latOrigin` of this provider.
  String get latOrigin;

  /// The parameter `lngOrigin` of this provider.
  String get lngOrigin;

  /// The parameter `latShop` of this provider.
  String get latShop;

  /// The parameter `lngShop` of this provider.
  String get lngShop;
}

class _FetchDistanceProviderElement
    extends AutoDisposeFutureProviderElement<String?> with FetchDistanceRef {
  _FetchDistanceProviderElement(super.provider);

  @override
  String get latOrigin => (origin as FetchDistanceProvider).latOrigin;
  @override
  String get lngOrigin => (origin as FetchDistanceProvider).lngOrigin;
  @override
  String get latShop => (origin as FetchDistanceProvider).latShop;
  @override
  String get lngShop => (origin as FetchDistanceProvider).lngShop;
}

String _$fetchDeliveryDistanceHash() =>
    r'802b63eecbe97222b723beb6714305c8d699ff77';

/// See also [fetchDeliveryDistance].
@ProviderFor(fetchDeliveryDistance)
const fetchDeliveryDistanceProvider = FetchDeliveryDistanceFamily();

/// See also [fetchDeliveryDistance].
class FetchDeliveryDistanceFamily extends Family<AsyncValue<String?>> {
  /// See also [fetchDeliveryDistance].
  const FetchDeliveryDistanceFamily();

  /// See also [fetchDeliveryDistance].
  FetchDeliveryDistanceProvider call(
    String latOrigin,
    String lngOrigin,
    String latDestination,
    String lngDestination,
    String waypoints,
  ) {
    return FetchDeliveryDistanceProvider(
      latOrigin,
      lngOrigin,
      latDestination,
      lngDestination,
      waypoints,
    );
  }

  @override
  FetchDeliveryDistanceProvider getProviderOverride(
    covariant FetchDeliveryDistanceProvider provider,
  ) {
    return call(
      provider.latOrigin,
      provider.lngOrigin,
      provider.latDestination,
      provider.lngDestination,
      provider.waypoints,
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
  String? get name => r'fetchDeliveryDistanceProvider';
}

/// See also [fetchDeliveryDistance].
class FetchDeliveryDistanceProvider extends AutoDisposeFutureProvider<String?> {
  /// See also [fetchDeliveryDistance].
  FetchDeliveryDistanceProvider(
    String latOrigin,
    String lngOrigin,
    String latDestination,
    String lngDestination,
    String waypoints,
  ) : this._internal(
          (ref) => fetchDeliveryDistance(
            ref as FetchDeliveryDistanceRef,
            latOrigin,
            lngOrigin,
            latDestination,
            lngDestination,
            waypoints,
          ),
          from: fetchDeliveryDistanceProvider,
          name: r'fetchDeliveryDistanceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchDeliveryDistanceHash,
          dependencies: FetchDeliveryDistanceFamily._dependencies,
          allTransitiveDependencies:
              FetchDeliveryDistanceFamily._allTransitiveDependencies,
          latOrigin: latOrigin,
          lngOrigin: lngOrigin,
          latDestination: latDestination,
          lngDestination: lngDestination,
          waypoints: waypoints,
        );

  FetchDeliveryDistanceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.latOrigin,
    required this.lngOrigin,
    required this.latDestination,
    required this.lngDestination,
    required this.waypoints,
  }) : super.internal();

  final String latOrigin;
  final String lngOrigin;
  final String latDestination;
  final String lngDestination;
  final String waypoints;

  @override
  Override overrideWith(
    FutureOr<String?> Function(FetchDeliveryDistanceRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchDeliveryDistanceProvider._internal(
        (ref) => create(ref as FetchDeliveryDistanceRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        latOrigin: latOrigin,
        lngOrigin: lngOrigin,
        latDestination: latDestination,
        lngDestination: lngDestination,
        waypoints: waypoints,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String?> createElement() {
    return _FetchDeliveryDistanceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchDeliveryDistanceProvider &&
        other.latOrigin == latOrigin &&
        other.lngOrigin == lngOrigin &&
        other.latDestination == latDestination &&
        other.lngDestination == lngDestination &&
        other.waypoints == waypoints;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, latOrigin.hashCode);
    hash = _SystemHash.combine(hash, lngOrigin.hashCode);
    hash = _SystemHash.combine(hash, latDestination.hashCode);
    hash = _SystemHash.combine(hash, lngDestination.hashCode);
    hash = _SystemHash.combine(hash, waypoints.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FetchDeliveryDistanceRef on AutoDisposeFutureProviderRef<String?> {
  /// The parameter `latOrigin` of this provider.
  String get latOrigin;

  /// The parameter `lngOrigin` of this provider.
  String get lngOrigin;

  /// The parameter `latDestination` of this provider.
  String get latDestination;

  /// The parameter `lngDestination` of this provider.
  String get lngDestination;

  /// The parameter `waypoints` of this provider.
  String get waypoints;
}

class _FetchDeliveryDistanceProviderElement
    extends AutoDisposeFutureProviderElement<String?>
    with FetchDeliveryDistanceRef {
  _FetchDeliveryDistanceProviderElement(super.provider);

  @override
  String get latOrigin => (origin as FetchDeliveryDistanceProvider).latOrigin;
  @override
  String get lngOrigin => (origin as FetchDeliveryDistanceProvider).lngOrigin;
  @override
  String get latDestination =>
      (origin as FetchDeliveryDistanceProvider).latDestination;
  @override
  String get lngDestination =>
      (origin as FetchDeliveryDistanceProvider).lngDestination;
  @override
  String get waypoints => (origin as FetchDeliveryDistanceProvider).waypoints;
}

String _$fetchDeliveryTimeHash() => r'36ac7ae426668e08e409e4ec382d43e577a392c8';

/// See also [fetchDeliveryTime].
@ProviderFor(fetchDeliveryTime)
const fetchDeliveryTimeProvider = FetchDeliveryTimeFamily();

/// See also [fetchDeliveryTime].
class FetchDeliveryTimeFamily extends Family<AsyncValue<String?>> {
  /// See also [fetchDeliveryTime].
  const FetchDeliveryTimeFamily();

  /// See also [fetchDeliveryTime].
  FetchDeliveryTimeProvider call(
    String latOrigin,
    String lngOrigin,
    String latDestination,
    String lngDestination,
    String waypoints,
  ) {
    return FetchDeliveryTimeProvider(
      latOrigin,
      lngOrigin,
      latDestination,
      lngDestination,
      waypoints,
    );
  }

  @override
  FetchDeliveryTimeProvider getProviderOverride(
    covariant FetchDeliveryTimeProvider provider,
  ) {
    return call(
      provider.latOrigin,
      provider.lngOrigin,
      provider.latDestination,
      provider.lngDestination,
      provider.waypoints,
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
  String? get name => r'fetchDeliveryTimeProvider';
}

/// See also [fetchDeliveryTime].
class FetchDeliveryTimeProvider extends AutoDisposeFutureProvider<String?> {
  /// See also [fetchDeliveryTime].
  FetchDeliveryTimeProvider(
    String latOrigin,
    String lngOrigin,
    String latDestination,
    String lngDestination,
    String waypoints,
  ) : this._internal(
          (ref) => fetchDeliveryTime(
            ref as FetchDeliveryTimeRef,
            latOrigin,
            lngOrigin,
            latDestination,
            lngDestination,
            waypoints,
          ),
          from: fetchDeliveryTimeProvider,
          name: r'fetchDeliveryTimeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchDeliveryTimeHash,
          dependencies: FetchDeliveryTimeFamily._dependencies,
          allTransitiveDependencies:
              FetchDeliveryTimeFamily._allTransitiveDependencies,
          latOrigin: latOrigin,
          lngOrigin: lngOrigin,
          latDestination: latDestination,
          lngDestination: lngDestination,
          waypoints: waypoints,
        );

  FetchDeliveryTimeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.latOrigin,
    required this.lngOrigin,
    required this.latDestination,
    required this.lngDestination,
    required this.waypoints,
  }) : super.internal();

  final String latOrigin;
  final String lngOrigin;
  final String latDestination;
  final String lngDestination;
  final String waypoints;

  @override
  Override overrideWith(
    FutureOr<String?> Function(FetchDeliveryTimeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchDeliveryTimeProvider._internal(
        (ref) => create(ref as FetchDeliveryTimeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        latOrigin: latOrigin,
        lngOrigin: lngOrigin,
        latDestination: latDestination,
        lngDestination: lngDestination,
        waypoints: waypoints,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String?> createElement() {
    return _FetchDeliveryTimeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchDeliveryTimeProvider &&
        other.latOrigin == latOrigin &&
        other.lngOrigin == lngOrigin &&
        other.latDestination == latDestination &&
        other.lngDestination == lngDestination &&
        other.waypoints == waypoints;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, latOrigin.hashCode);
    hash = _SystemHash.combine(hash, lngOrigin.hashCode);
    hash = _SystemHash.combine(hash, latDestination.hashCode);
    hash = _SystemHash.combine(hash, lngDestination.hashCode);
    hash = _SystemHash.combine(hash, waypoints.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FetchDeliveryTimeRef on AutoDisposeFutureProviderRef<String?> {
  /// The parameter `latOrigin` of this provider.
  String get latOrigin;

  /// The parameter `lngOrigin` of this provider.
  String get lngOrigin;

  /// The parameter `latDestination` of this provider.
  String get latDestination;

  /// The parameter `lngDestination` of this provider.
  String get lngDestination;

  /// The parameter `waypoints` of this provider.
  String get waypoints;
}

class _FetchDeliveryTimeProviderElement
    extends AutoDisposeFutureProviderElement<String?>
    with FetchDeliveryTimeRef {
  _FetchDeliveryTimeProviderElement(super.provider);

  @override
  String get latOrigin => (origin as FetchDeliveryTimeProvider).latOrigin;
  @override
  String get lngOrigin => (origin as FetchDeliveryTimeProvider).lngOrigin;
  @override
  String get latDestination =>
      (origin as FetchDeliveryTimeProvider).latDestination;
  @override
  String get lngDestination =>
      (origin as FetchDeliveryTimeProvider).lngDestination;
  @override
  String get waypoints => (origin as FetchDeliveryTimeProvider).waypoints;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
