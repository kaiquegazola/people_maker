import 'package:people_maker/modules/people/domain/entities/entities.dart';

import 'user.dart';

class UserModel extends UserEntity {
  const UserModel({
    required super.gender,
    required super.name,
    required super.location,
    required super.email,
    required super.login,
    required super.phone,
    required super.cell,
    required super.identification,
    required super.picture,
    required super.nat,
    required super.dateOfBirth,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    final dob = json['dob'] as Map<String, dynamic>?;
    return UserModel(
      gender: json['gender'] as String,
      name: NameModel.fromJson(
        json['name'] as Map<String, dynamic>,
      ),
      location: LocationModel.fromJson(
        json['location'] as Map<String, dynamic>,
      ),
      email: json['email'] as String,
      login: LoginModel.fromJson(
        json['login'] as Map<String, dynamic>,
      ),
      phone: json['phone'] as String,
      cell: json['cell'] as String,
      identification: IdentificationModel.fromJson(
        json['id'] as Map<String, dynamic>,
      ),
      picture: PictureModel.fromJson(json['picture'] as Map<String, dynamic>),
      nat: json['nat'] as String,
      dateOfBirth: (dob != null ? dob['date'] : json['dateOfBirth']) as String,
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    final dob = <String, dynamic>{};
    dob['date'] = dateOfBirth;
    map['gender'] = gender;
    map['name'] = (name as NameModel).toJson();
    map['location'] = (location as LocationModel).toJson();
    map['email'] = email;
    map['login'] = (login as LoginModel).toJson();
    map['phone'] = phone;
    map['cell'] = cell;
    map['id'] = (identification as IdentificationModel).toJson();
    map['picture'] = (picture as PictureModel).toJson();
    map['nat'] = nat;
    map['dob'] = dob;
    return map;
  }
}
