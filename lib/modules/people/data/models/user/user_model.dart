import 'package:people_maker/core/core.dart';
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
    super.id,
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

  factory UserModel.fromEntity(UserEntity entity) {
    return UserModel(
      gender: entity.gender,
      name: entity.name,
      location: entity.location,
      email: entity.email,
      login: entity.login,
      phone: entity.phone,
      cell: entity.cell,
      identification: entity.identification,
      picture: entity.picture,
      nat: entity.nat,
      dateOfBirth: entity.dateOfBirth,
    );
  }

  UserModel copyWith({
    String? gender,
    NameEntity? name,
    LocationEntity? location,
    String? email,
    LoginEntity? login,
    String? phone,
    String? cell,
    IdentificationEntity? identification,
    PictureEntity? picture,
    String? nat,
    String? dateOfBirth,
  }) {
    return UserModel(
      gender: gender ?? this.gender,
      name: name ?? this.name,
      location: location ?? this.location,
      email: email ?? this.email,
      login: login ?? this.login,
      phone: phone ?? this.phone,
      cell: cell ?? this.cell,
      identification: identification ?? this.identification,
      picture: picture ?? this.picture,
      nat: nat ?? this.nat,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
    );
  }

  UserEntity toEntity() {
    return UserEntity(
      gender: gender,
      name: name,
      location: location,
      email: email,
      login: login,
      phone: phone,
      cell: cell,
      identification: identification,
      picture: picture,
      nat: nat,
      dateOfBirth: dateOfBirth,
    );
  }

  IsarUser toIsar() {
    return IsarUser(
      id: id,
      gender: gender,
      name: (name as NameModel).toIsar(),
      location: (location as LocationModel).toIsar(),
      email: email,
      login: (login as LoginModel).toIsar(),
      phone: phone,
      cell: cell,
      identification: (identification as IdentificationModel).toIsar(),
      picture: (picture as PictureModel).toIsar(),
      nat: nat,
      dateOfBirth: dateOfBirth,
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

  static String getUserIdentification(IdentificationEntity? identification) {
    final name = identification?.name;
    final value = identification?.value;
    if (name != null && value != null) {
      return '$name: $value';
    } else if (value != null) {
      return value;
    }
    return '';
  }

  static String getUserName(NameEntity? name) {
    if (name != null) {
      return '${name.first} ${name.last}';
    }
    return '';
  }

  static String getUserAddress(LocationEntity? location) {
    final street = location?.street ?? '';
    final number = location?.number ?? '';
    final city = location?.city ?? '';
    final state = location?.state ?? '';
    final postcode = location?.postcode ?? '';
    return '$street $number $city $state $postcode';
  }
}
