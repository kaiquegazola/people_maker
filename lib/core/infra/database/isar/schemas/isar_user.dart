import 'package:isar/isar.dart';

import 'schemas.dart';

part 'isar_user.g.dart';

@Collection()
class IsarUser {
  IsarUser({
    required this.gender,
    required this.name,
    required this.location,
    required this.email,
    required this.login,
    required this.phone,
    required this.cell,
    required this.identification,
    required this.picture,
    required this.nat,
    required this.dateOfBirth,
    this.id,
  });

  Id? id = Isar.autoIncrement;
  late String gender;
  late IsarName name;
  late IsarLocation location;
  late String email;
  late IsarLogin login;
  late String phone;
  late String cell;
  late IsarIdentification identification;
  late IsarPicture picture;
  late String nat;
  late String dateOfBirth;
}
