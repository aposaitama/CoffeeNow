// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_concrete_product_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchConcreteProductHash() =>
    r'8654c34d245c9cfe0d8774816ea5c5fdd37a8a6a';

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

/// See also [fetchConcreteProduct].
@ProviderFor(fetchConcreteProduct)
const fetchConcreteProductProvider = FetchConcreteProductFamily();

/// See also [fetchConcreteProduct].
class FetchConcreteProductFamily
    extends Family<AsyncValue<DetailedProductModel?>> {
  /// See also [fetchConcreteProduct].
  const FetchConcreteProductFamily();

  /// See also [fetchConcreteProduct].
  FetchConcreteProductProvider call(
    String documentID,
  ) {
    return FetchConcreteProductProvider(
      documentID,
    );
  }

  @override
  FetchConcreteProductProvider getProviderOverride(
    covariant FetchConcreteProductProvider provider,
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
  String? get name => r'fetchConcreteProductProvider';
}

/// See also [fetchConcreteProduct].
class FetchConcreteProductProvider
    extends AutoDisposeFutureProvider<DetailedProductModel?> {
  /// See also [fetchConcreteProduct].
  FetchConcreteProductProvider(
    String documentID,
  ) : this._internal(
          (ref) => fetchConcreteProduct(
            ref as FetchConcreteProductRef,
            documentID,
          ),
          from: fetchConcreteProductProvider,
          name: r'fetchConcreteProductProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchConcreteProductHash,
          dependencies: FetchConcreteProductFamily._dependencies,
          allTransitiveDependencies:
              FetchConcreteProductFamily._allTransitiveDependencies,
          documentID: documentID,
        );

  FetchConcreteProductProvider._internal(
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
    FutureOr<DetailedProductModel?> Function(FetchConcreteProductRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchConcreteProductProvider._internal(
        (ref) => create(ref as FetchConcreteProductRef),
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
  AutoDisposeFutureProviderElement<DetailedProductModel?> createElement() {
    return _FetchConcreteProductProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchConcreteProductProvider &&
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
mixin FetchConcreteProductRef
    on AutoDisposeFutureProviderRef<DetailedProductModel?> {
  /// The parameter `documentID` of this provider.
  String get documentID;
}

class _FetchConcreteProductProviderElement
    extends AutoDisposeFutureProviderElement<DetailedProductModel?>
    with FetchConcreteProductRef {
  _FetchConcreteProductProviderElement(super.provider);

  @override
  String get documentID => (origin as FetchConcreteProductProvider).documentID;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
