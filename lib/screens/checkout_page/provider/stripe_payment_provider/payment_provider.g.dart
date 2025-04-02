// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$makePaymentHash() => r'd96b22eeda80993cf0eca35f9a907a61ca0d43d7';

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

/// See also [makePayment].
@ProviderFor(makePayment)
const makePaymentProvider = MakePaymentFamily();

/// See also [makePayment].
class MakePaymentFamily extends Family<AsyncValue<bool>> {
  /// See also [makePayment].
  const MakePaymentFamily();

  /// See also [makePayment].
  MakePaymentProvider call(
    String amount,
    String currency,
  ) {
    return MakePaymentProvider(
      amount,
      currency,
    );
  }

  @override
  MakePaymentProvider getProviderOverride(
    covariant MakePaymentProvider provider,
  ) {
    return call(
      provider.amount,
      provider.currency,
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
  String? get name => r'makePaymentProvider';
}

/// See also [makePayment].
class MakePaymentProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [makePayment].
  MakePaymentProvider(
    String amount,
    String currency,
  ) : this._internal(
          (ref) => makePayment(
            ref as MakePaymentRef,
            amount,
            currency,
          ),
          from: makePaymentProvider,
          name: r'makePaymentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$makePaymentHash,
          dependencies: MakePaymentFamily._dependencies,
          allTransitiveDependencies:
              MakePaymentFamily._allTransitiveDependencies,
          amount: amount,
          currency: currency,
        );

  MakePaymentProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.amount,
    required this.currency,
  }) : super.internal();

  final String amount;
  final String currency;

  @override
  Override overrideWith(
    FutureOr<bool> Function(MakePaymentRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MakePaymentProvider._internal(
        (ref) => create(ref as MakePaymentRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        amount: amount,
        currency: currency,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _MakePaymentProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MakePaymentProvider &&
        other.amount == amount &&
        other.currency == currency;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, amount.hashCode);
    hash = _SystemHash.combine(hash, currency.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MakePaymentRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `amount` of this provider.
  String get amount;

  /// The parameter `currency` of this provider.
  String get currency;
}

class _MakePaymentProviderElement extends AutoDisposeFutureProviderElement<bool>
    with MakePaymentRef {
  _MakePaymentProviderElement(super.provider);

  @override
  String get amount => (origin as MakePaymentProvider).amount;
  @override
  String get currency => (origin as MakePaymentProvider).currency;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
