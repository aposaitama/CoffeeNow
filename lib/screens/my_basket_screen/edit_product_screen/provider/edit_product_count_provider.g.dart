// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_product_count_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$editProductCountHash() => r'684129d63aef47735f8face5a6d2c3edefddf703';

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

abstract class _$EditProductCount extends BuildlessAutoDisposeNotifier<int> {
  late final int initialCount;

  int build(
    int initialCount,
  );
}

/// See also [EditProductCount].
@ProviderFor(EditProductCount)
const editProductCountProvider = EditProductCountFamily();

/// See also [EditProductCount].
class EditProductCountFamily extends Family<int> {
  /// See also [EditProductCount].
  const EditProductCountFamily();

  /// See also [EditProductCount].
  EditProductCountProvider call(
    int initialCount,
  ) {
    return EditProductCountProvider(
      initialCount,
    );
  }

  @override
  EditProductCountProvider getProviderOverride(
    covariant EditProductCountProvider provider,
  ) {
    return call(
      provider.initialCount,
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
  String? get name => r'editProductCountProvider';
}

/// See also [EditProductCount].
class EditProductCountProvider
    extends AutoDisposeNotifierProviderImpl<EditProductCount, int> {
  /// See also [EditProductCount].
  EditProductCountProvider(
    int initialCount,
  ) : this._internal(
          () => EditProductCount()..initialCount = initialCount,
          from: editProductCountProvider,
          name: r'editProductCountProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$editProductCountHash,
          dependencies: EditProductCountFamily._dependencies,
          allTransitiveDependencies:
              EditProductCountFamily._allTransitiveDependencies,
          initialCount: initialCount,
        );

  EditProductCountProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initialCount,
  }) : super.internal();

  final int initialCount;

  @override
  int runNotifierBuild(
    covariant EditProductCount notifier,
  ) {
    return notifier.build(
      initialCount,
    );
  }

  @override
  Override overrideWith(EditProductCount Function() create) {
    return ProviderOverride(
      origin: this,
      override: EditProductCountProvider._internal(
        () => create()..initialCount = initialCount,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        initialCount: initialCount,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<EditProductCount, int> createElement() {
    return _EditProductCountProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EditProductCountProvider &&
        other.initialCount == initialCount;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initialCount.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin EditProductCountRef on AutoDisposeNotifierProviderRef<int> {
  /// The parameter `initialCount` of this provider.
  int get initialCount;
}

class _EditProductCountProviderElement
    extends AutoDisposeNotifierProviderElement<EditProductCount, int>
    with EditProductCountRef {
  _EditProductCountProviderElement(super.provider);

  @override
  int get initialCount => (origin as EditProductCountProvider).initialCount;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
