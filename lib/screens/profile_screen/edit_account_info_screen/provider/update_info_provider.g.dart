// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_info_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$updateInfoHash() => r'8500cdab85c46dbbfa5e6905718f0db658cc87f8';

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

/// See also [updateInfo].
@ProviderFor(updateInfo)
const updateInfoProvider = UpdateInfoFamily();

/// See also [updateInfo].
class UpdateInfoFamily extends Family<AsyncValue<void>> {
  /// See also [updateInfo].
  const UpdateInfoFamily();

  /// See also [updateInfo].
  UpdateInfoProvider call(
    File image,
    String userID,
  ) {
    return UpdateInfoProvider(
      image,
      userID,
    );
  }

  @override
  UpdateInfoProvider getProviderOverride(
    covariant UpdateInfoProvider provider,
  ) {
    return call(
      provider.image,
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
  String? get name => r'updateInfoProvider';
}

/// See also [updateInfo].
class UpdateInfoProvider extends AutoDisposeFutureProvider<void> {
  /// See also [updateInfo].
  UpdateInfoProvider(
    File image,
    String userID,
  ) : this._internal(
          (ref) => updateInfo(
            ref as UpdateInfoRef,
            image,
            userID,
          ),
          from: updateInfoProvider,
          name: r'updateInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateInfoHash,
          dependencies: UpdateInfoFamily._dependencies,
          allTransitiveDependencies:
              UpdateInfoFamily._allTransitiveDependencies,
          image: image,
          userID: userID,
        );

  UpdateInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.image,
    required this.userID,
  }) : super.internal();

  final File image;
  final String userID;

  @override
  Override overrideWith(
    FutureOr<void> Function(UpdateInfoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateInfoProvider._internal(
        (ref) => create(ref as UpdateInfoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        image: image,
        userID: userID,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _UpdateInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateInfoProvider &&
        other.image == image &&
        other.userID == userID;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, image.hashCode);
    hash = _SystemHash.combine(hash, userID.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UpdateInfoRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `image` of this provider.
  File get image;

  /// The parameter `userID` of this provider.
  String get userID;
}

class _UpdateInfoProviderElement extends AutoDisposeFutureProviderElement<void>
    with UpdateInfoRef {
  _UpdateInfoProviderElement(super.provider);

  @override
  File get image => (origin as UpdateInfoProvider).image;
  @override
  String get userID => (origin as UpdateInfoProvider).userID;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
