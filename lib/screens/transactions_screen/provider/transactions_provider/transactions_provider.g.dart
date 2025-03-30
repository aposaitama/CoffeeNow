// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchTransactionsHash() => r'df9e7b71acb6ba1f3073f5f3713e129b2c337bea';

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

/// See also [fetchTransactions].
@ProviderFor(fetchTransactions)
const fetchTransactionsProvider = FetchTransactionsFamily();

/// See also [fetchTransactions].
class FetchTransactionsFamily
    extends Family<AsyncValue<List<TransactionItemModel>>> {
  /// See also [fetchTransactions].
  const FetchTransactionsFamily();

  /// See also [fetchTransactions].
  FetchTransactionsProvider call(
    int userID,
  ) {
    return FetchTransactionsProvider(
      userID,
    );
  }

  @override
  FetchTransactionsProvider getProviderOverride(
    covariant FetchTransactionsProvider provider,
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
  String? get name => r'fetchTransactionsProvider';
}

/// See also [fetchTransactions].
class FetchTransactionsProvider
    extends AutoDisposeFutureProvider<List<TransactionItemModel>> {
  /// See also [fetchTransactions].
  FetchTransactionsProvider(
    int userID,
  ) : this._internal(
          (ref) => fetchTransactions(
            ref as FetchTransactionsRef,
            userID,
          ),
          from: fetchTransactionsProvider,
          name: r'fetchTransactionsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchTransactionsHash,
          dependencies: FetchTransactionsFamily._dependencies,
          allTransitiveDependencies:
              FetchTransactionsFamily._allTransitiveDependencies,
          userID: userID,
        );

  FetchTransactionsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userID,
  }) : super.internal();

  final int userID;

  @override
  Override overrideWith(
    FutureOr<List<TransactionItemModel>> Function(FetchTransactionsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchTransactionsProvider._internal(
        (ref) => create(ref as FetchTransactionsRef),
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
  AutoDisposeFutureProviderElement<List<TransactionItemModel>> createElement() {
    return _FetchTransactionsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchTransactionsProvider && other.userID == userID;
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
mixin FetchTransactionsRef
    on AutoDisposeFutureProviderRef<List<TransactionItemModel>> {
  /// The parameter `userID` of this provider.
  int get userID;
}

class _FetchTransactionsProviderElement
    extends AutoDisposeFutureProviderElement<List<TransactionItemModel>>
    with FetchTransactionsRef {
  _FetchTransactionsProviderElement(super.provider);

  @override
  int get userID => (origin as FetchTransactionsProvider).userID;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
