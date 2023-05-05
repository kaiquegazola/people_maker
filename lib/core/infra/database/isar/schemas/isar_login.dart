import 'package:isar/isar.dart';

part 'isar_login.g.dart';

@Embedded()
class IsarLogin {
  IsarLogin({
    this.username,
    this.password,
  });

  late String? username;
  late String? password;
}
