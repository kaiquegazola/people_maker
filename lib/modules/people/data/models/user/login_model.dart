import 'package:people_maker/modules/people/domain/entities/entities.dart';

class LoginModel extends LoginEntity {
  const LoginModel({
    required super.username,
    required super.password,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      username: json['username'] as String,
      password: json['password'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['username'] = username;
    map['password'] = password;
    return map;
  }
}
