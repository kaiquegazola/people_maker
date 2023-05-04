import 'package:people_maker/modules/people/domain/entities/entities.dart';

abstract class GenerateUser {
  Future<UserEntity> generate();
}
