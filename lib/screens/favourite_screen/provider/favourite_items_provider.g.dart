// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_items_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userFavouritesBoxHash() => r'02a8492ee0821e7ee89c74f869e22d3671054a7d';

/// See also [userFavouritesBox].
@ProviderFor(userFavouritesBox)
final userFavouritesBoxProvider =
    AutoDisposeProvider<Box<FavouriteHiveItemModel>>.internal(
  userFavouritesBox,
  name: r'userFavouritesBoxProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userFavouritesBoxHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef UserFavouritesBoxRef
    = AutoDisposeProviderRef<Box<FavouriteHiveItemModel>>;
String _$userFavouritesHash() => r'2015279b7d4470427e2f3583d139d3797f908cc1';

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

abstract class _$UserFavourites
    extends BuildlessAutoDisposeNotifier<List<String>> {
  late final String userID;

  List<String> build(
    String userID,
  );
}

/// See also [UserFavourites].
@ProviderFor(UserFavourites)
const userFavouritesProvider = UserFavouritesFamily();

/// See also [UserFavourites].
class UserFavouritesFamily extends Family<List<String>> {
  /// See also [UserFavourites].
  const UserFavouritesFamily();

  /// See also [UserFavourites].
  UserFavouritesProvider call(
    String userID,
  ) {
    return UserFavouritesProvider(
      userID,
    );
  }

  @override
  UserFavouritesProvider getProviderOverride(
    covariant UserFavouritesProvider provider,
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
  String? get name => r'userFavouritesProvider';
}

/// See also [UserFavourites].
class UserFavouritesProvider
    extends AutoDisposeNotifierProviderImpl<UserFavourites, List<String>> {
  /// See also [UserFavourites].
  UserFavouritesProvider(
    String userID,
  ) : this._internal(
          () => UserFavourites()..userID = userID,
          from: userFavouritesProvider,
          name: r'userFavouritesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userFavouritesHash,
          dependencies: UserFavouritesFamily._dependencies,
          allTransitiveDependencies:
              UserFavouritesFamily._allTransitiveDependencies,
          userID: userID,
        );

  UserFavouritesProvider._internal(
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
  List<String> runNotifierBuild(
    covariant UserFavourites notifier,
  ) {
    return notifier.build(
      userID,
    );
  }

  @override
  Override overrideWith(UserFavourites Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserFavouritesProvider._internal(
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
  AutoDisposeNotifierProviderElement<UserFavourites, List<String>>
      createElement() {
    return _UserFavouritesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserFavouritesProvider && other.userID == userID;
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
mixin UserFavouritesRef on AutoDisposeNotifierProviderRef<List<String>> {
  /// The parameter `userID` of this provider.
  String get userID;
}

class _UserFavouritesProviderElement
    extends AutoDisposeNotifierProviderElement<UserFavourites, List<String>>
    with UserFavouritesRef {
  _UserFavouritesProviderElement(super.provider);

  @override
  String get userID => (origin as UserFavouritesProvider).userID;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
