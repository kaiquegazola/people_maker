import 'package:people_maker/core/core.dart';
import 'package:people_maker/modules/people/domain/entities/entities.dart';

class LocationModel extends LocationEntity {
  const LocationModel({
    required super.city,
    required super.state,
    required super.country,
    required super.postcode,
    required super.street,
    required super.number,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) {
    final street = json['street'] as Map<String, dynamic>;

    final postCode = json['postcode'];

    return LocationModel(
      city: json['city'] as String,
      state: json['state'] as String,
      country: json['country'] as String,
      postcode: postCode is String ? postCode : '$postCode',
      street: street['name'] as String,
      number: street['number'] as int,
    );
  }

  IsarLocation toIsar() {
    return IsarLocation(
      street: street,
      city: city,
      state: state,
      country: country,
      postcode: postcode,
      number: number,
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    final street = <String, dynamic>{};
    street['name'] = this.street;
    street['number'] = number;
    map['street'] = street;
    map['city'] = city;
    map['state'] = state;
    map['country'] = country;
    map['postcode'] = postcode;
    return map;
  }
}
