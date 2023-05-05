import 'package:isar/isar.dart';

part 'isar_location.g.dart';

@Embedded()
class IsarLocation {
  IsarLocation({
    this.street,
    this.city,
    this.state,
    this.country,
    this.postcode,
    this.number,
  });

  late String? street;
  late String? city;
  late String? state;
  late String? country;
  late String? postcode;
  late int? number;
}
