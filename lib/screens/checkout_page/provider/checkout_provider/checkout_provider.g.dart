// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$checkoutHash() => r'1c6c88ff9845d2763bccbbfe5c6ed90e5545a1e4';

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

/// See also [checkout].
@ProviderFor(checkout)
const checkoutProvider = CheckoutFamily();

/// See also [checkout].
class CheckoutFamily extends Family<AsyncValue<void>> {
  /// See also [checkout].
  const CheckoutFamily();

  /// See also [checkout].
  CheckoutProvider call(
    List<BasketItemHiveModel> basketListItems,
    String userID,
    DeliveryMethod deliveryMethod,
    PaymentMethod paymentMethod,
    String orderTotal,
    String destinationAddress,
  ) {
    return CheckoutProvider(
      basketListItems,
      userID,
      deliveryMethod,
      paymentMethod,
      orderTotal,
      destinationAddress,
    );
  }

  @override
  CheckoutProvider getProviderOverride(
    covariant CheckoutProvider provider,
  ) {
    return call(
      provider.basketListItems,
      provider.userID,
      provider.deliveryMethod,
      provider.paymentMethod,
      provider.orderTotal,
      provider.destinationAddress,
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
  String? get name => r'checkoutProvider';
}

/// See also [checkout].
class CheckoutProvider extends AutoDisposeFutureProvider<void> {
  /// See also [checkout].
  CheckoutProvider(
    List<BasketItemHiveModel> basketListItems,
    String userID,
    DeliveryMethod deliveryMethod,
    PaymentMethod paymentMethod,
    String orderTotal,
    String destinationAddress,
  ) : this._internal(
          (ref) => checkout(
            ref as CheckoutRef,
            basketListItems,
            userID,
            deliveryMethod,
            paymentMethod,
            orderTotal,
            destinationAddress,
          ),
          from: checkoutProvider,
          name: r'checkoutProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$checkoutHash,
          dependencies: CheckoutFamily._dependencies,
          allTransitiveDependencies: CheckoutFamily._allTransitiveDependencies,
          basketListItems: basketListItems,
          userID: userID,
          deliveryMethod: deliveryMethod,
          paymentMethod: paymentMethod,
          orderTotal: orderTotal,
          destinationAddress: destinationAddress,
        );

  CheckoutProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.basketListItems,
    required this.userID,
    required this.deliveryMethod,
    required this.paymentMethod,
    required this.orderTotal,
    required this.destinationAddress,
  }) : super.internal();

  final List<BasketItemHiveModel> basketListItems;
  final String userID;
  final DeliveryMethod deliveryMethod;
  final PaymentMethod paymentMethod;
  final String orderTotal;
  final String destinationAddress;

  @override
  Override overrideWith(
    FutureOr<void> Function(CheckoutRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CheckoutProvider._internal(
        (ref) => create(ref as CheckoutRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        basketListItems: basketListItems,
        userID: userID,
        deliveryMethod: deliveryMethod,
        paymentMethod: paymentMethod,
        orderTotal: orderTotal,
        destinationAddress: destinationAddress,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _CheckoutProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CheckoutProvider &&
        other.basketListItems == basketListItems &&
        other.userID == userID &&
        other.deliveryMethod == deliveryMethod &&
        other.paymentMethod == paymentMethod &&
        other.orderTotal == orderTotal &&
        other.destinationAddress == destinationAddress;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, basketListItems.hashCode);
    hash = _SystemHash.combine(hash, userID.hashCode);
    hash = _SystemHash.combine(hash, deliveryMethod.hashCode);
    hash = _SystemHash.combine(hash, paymentMethod.hashCode);
    hash = _SystemHash.combine(hash, orderTotal.hashCode);
    hash = _SystemHash.combine(hash, destinationAddress.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CheckoutRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `basketListItems` of this provider.
  List<BasketItemHiveModel> get basketListItems;

  /// The parameter `userID` of this provider.
  String get userID;

  /// The parameter `deliveryMethod` of this provider.
  DeliveryMethod get deliveryMethod;

  /// The parameter `paymentMethod` of this provider.
  PaymentMethod get paymentMethod;

  /// The parameter `orderTotal` of this provider.
  String get orderTotal;

  /// The parameter `destinationAddress` of this provider.
  String get destinationAddress;
}

class _CheckoutProviderElement extends AutoDisposeFutureProviderElement<void>
    with CheckoutRef {
  _CheckoutProviderElement(super.provider);

  @override
  List<BasketItemHiveModel> get basketListItems =>
      (origin as CheckoutProvider).basketListItems;
  @override
  String get userID => (origin as CheckoutProvider).userID;
  @override
  DeliveryMethod get deliveryMethod =>
      (origin as CheckoutProvider).deliveryMethod;
  @override
  PaymentMethod get paymentMethod => (origin as CheckoutProvider).paymentMethod;
  @override
  String get orderTotal => (origin as CheckoutProvider).orderTotal;
  @override
  String get destinationAddress =>
      (origin as CheckoutProvider).destinationAddress;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
