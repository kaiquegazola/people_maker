import 'package:people_maker/modules/people/domain/entities/entities.dart';

abstract class LoadUsers {
  Future<List<UserEntity>> load();
}
