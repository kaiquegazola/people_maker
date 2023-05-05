import 'package:people_maker/core/core.dart';
import 'package:people_maker/modules/people/domain/domain.dart';

class LocalSaveUser implements SaveUser {
  LocalSaveUser({
    required this.repository,
  });

  final UserRepository repository;

  @override
  Future<int> save(UserEntity user) async {
    try {
      final id = await repository.add(user);
      return id;
    } catch (_) {
      throw UnexpectedError();
    }
  }
}
