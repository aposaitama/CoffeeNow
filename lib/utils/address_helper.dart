import 'package:coffee_now/models/google_maps_models/location_model/location_model.dart';

class Address {
  final List<AddressComponent> _addressComponents;

  Address(this._addressComponents);

  String get city {
    final cityComponent = _addressComponents.firstWhere(
      (component) => component.types.contains('locality'),
      orElse: () =>
          const AddressComponent(long_name: '', short_name: '', types: []),
    );
    return cityComponent.long_name;
  }

  String get country {
    final countryComponent = _addressComponents.firstWhere(
      (component) => component.types.contains('country'),
      orElse: () =>
          const AddressComponent(long_name: '', short_name: '', types: []),
    );
    return countryComponent.long_name;
  }

  String get fullAddress {
    final streetComponent = _addressComponents.firstWhere(
      (component) => component.types.contains('route'),
      orElse: () =>
          const AddressComponent(long_name: '', short_name: '', types: []),
    );
    final streetName = streetComponent.long_name;

    return '$streetName, $city, $country';
  }

  String get address {
    final streetComponent = _addressComponents.firstWhere(
      (component) => component.types.contains('route'),
      orElse: () =>
          const AddressComponent(long_name: '', short_name: '', types: []),
    );
    final streetName = streetComponent.long_name;

    return streetName;
  }
}
