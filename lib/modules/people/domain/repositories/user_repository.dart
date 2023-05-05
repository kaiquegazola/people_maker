import 'package:people_maker/modules/people/domain/domain.dart';

abstract class UserRepository {
  Future<int> add(UserEntity user);
  Future<void> remove(int id);
  Future<List<UserEntity>> listAll();
}
