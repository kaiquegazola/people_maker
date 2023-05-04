import 'package:equatable/equatable.dart';

class LocationEntity extends Equatable {
  const LocationEntity({
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
    required this.street,
    required this.number,
  });

  final String city;
  final String state;
  final String country;
  final String postcode;
  final String street;
  final int number;

  @override
  List<Object?> get props => [
        city,
        state,
        country,
        postcode,
        street,
        number,
      ];
}
