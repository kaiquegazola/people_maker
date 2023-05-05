import 'package:people_maker/modules/people/domain/domain.dart';

class LocalRemoveUser implements RemoveUser {
  LocalRemoveUser({
    required this.repository,
  });

  final UserRepository repository;

  @override
  Future<bool> remove(int id) async {
    try {
      await repository.remove(id);
      return true;
    } catch (_) {
      return false;
    }
  }
}
