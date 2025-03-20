// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_history_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchCategoriesHash() => r'93b49defaaa3592cb73ea043af3af404b05b539f';

/// See also [fetchCategories].
@ProviderFor(fetchCategories)
final fetchCategoriesProvider =
    AutoDisposeFutureProvider<CategoriesModel?>.internal(
  fetchCategories,
  name: r'fetchCategoriesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchCategoriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FetchCategoriesRef = AutoDisposeFutureProviderRef<CategoriesModel?>;
String _$searchHistoryBoxHash() => r'de20a5c6faa09bdc4e1624d7230382ead2a039ca';

/// See also [searchHistoryBox].
@ProviderFor(searchHistoryBox)
final searchHistoryBoxProvider =
    AutoDisposeProvider<Box<SearchHistoryHiveModel>>.internal(
  searchHistoryBox,
  name: r'searchHistoryBoxProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$searchHistoryBoxHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SearchHistoryBoxRef
    = AutoDisposeProviderRef<Box<SearchHistoryHiveModel>>;
String _$searchHistoryHash() => r'8d7ad3420c44ccba514b8f39135daa85982cf150';

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

abstract class _$SearchHistory
    extends BuildlessAutoDisposeNotifier<List<String>> {
  late final String userID;

  List<String> build(
    String userID,
  );
}

/// See also [SearchHistory].
@ProviderFor(SearchHistory)
const searchHistoryProvider = SearchHistoryFamily();

/// See also [SearchHistory].
class SearchHistoryFamily extends Family<List<String>> {
  /// See also [SearchHistory].
  const SearchHistoryFamily();

  /// See also [SearchHistory].
  SearchHistoryProvider call(
    String userID,
  ) {
    return SearchHistoryProvider(
      userID,
    );
  }

  @override
  SearchHistoryProvider getProviderOverride(
    covariant SearchHistoryProvider provider,
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
  String? get name => r'searchHistoryProvider';
}

/// See also [SearchHistory].
class SearchHistoryProvider
    extends AutoDisposeNotifierProviderImpl<SearchHistory, List<String>> {
  /// See also [SearchHistory].
  SearchHistoryProvider(
    String userID,
  ) : this._internal(
          () => SearchHistory()..userID = userID,
          from: searchHistoryProvider,
          name: r'searchHistoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchHistoryHash,
          dependencies: SearchHistoryFamily._dependencies,
          allTransitiveDependencies:
              SearchHistoryFamily._allTransitiveDependencies,
          userID: userID,
        );

  SearchHistoryProvider._internal(
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
    covariant SearchHistory notifier,
  ) {
    return notifier.build(
      userID,
    );
  }

  @override
  Override overrideWith(SearchHistory Function() create) {
    return ProviderOverride(
      origin: this,
      override: SearchHistoryProvider._internal(
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
  AutoDisposeNotifierProviderElement<SearchHistory, List<String>>
      createElement() {
    return _SearchHistoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchHistoryProvider && other.userID == userID;
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
mixin SearchHistoryRef on AutoDisposeNotifierProviderRef<List<String>> {
  /// The parameter `userID` of this provider.
  String get userID;
}

class _SearchHistoryProviderElement
    extends AutoDisposeNotifierProviderElement<SearchHistory, List<String>>
    with SearchHistoryRef {
  _SearchHistoryProviderElement(super.provider);

  @override
  String get userID => (origin as SearchHistoryProvider).userID;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
