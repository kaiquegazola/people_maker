import 'package:equatable/equatable.dart';

import 'identification_entity.dart';
import 'location_entity.dart';
import 'login_entity.dart';
import 'name_entity.dart';
import 'picture_entity.dart';

class UserEntity extends Equatable {
  const UserEntity({
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

  final int? id;
  final String gender;
  final NameEntity name;
  final LocationEntity location;
  final String email;
  final LoginEntity login;
  final String phone;
  final String cell;
  final IdentificationEntity identification;
  final PictureEntity picture;
  final String nat;
  final String dateOfBirth;

  @override
  List<Object?> get props => [
        gender,
        name,
        location,
        email,
        login,
        dateOfBirth,
        phone,
        cell,
        identification,
        picture,
        nat,
      ];
}
