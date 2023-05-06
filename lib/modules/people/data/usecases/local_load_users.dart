import 'package:people_maker/core/core.dart';
import 'package:people_maker/modules/people/domain/domain.dart';

class LocalLoadUsers implements LoadUsers {
  LocalLoadUsers({
    required this.repository,
  });

  final UserRepository repository;

  @override
  Future<List<UserEntity>> load() async {
    try {
      final list = await repository.listAll();
      return list;
    } catch (_) {
      throw UnexpectedError();
    }
  }
}
