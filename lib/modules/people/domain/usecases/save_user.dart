import 'package:people_maker/modules/people/domain/entities/entities.dart';

abstract class SaveUser {
  Future<int> save(UserEntity user);
}
