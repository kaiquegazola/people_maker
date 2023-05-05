import 'package:mobx/mobx.dart';
import 'package:people_maker/modules/people/domain/domain.dart';

part 'generate_controller.g.dart';

class GenerateController = GenerateControllerBase with _$GenerateController;

abstract class GenerateControllerBase with Store {
  GenerateControllerBase({
    required this.generateUser,
    required this.saveUser,
    required this.removeUser,
  }) {
    generate();
  }

  final GenerateUser generateUser;
  final SaveUser saveUser;
  final RemoveUser removeUser;

  int? id;

  @observable
  UserEntity? user;

  @computed
  String get userName {
    final user = this.user;
    if (user != null) {
      return '${user.name.first} ${user.name.last}';
    }
    return '';
  }

  @computed
  String get userIdentification {
    final identification = user?.identification;
    final name = identification?.name;
    final value = identification?.value;
    if (name != null && value != null) {
      return '$name: $value';
    } else if (value != null) {
      return value;
    }
    return '';
  }

  @observable
  bool isLoading = true;

  @observable
  bool isSaved = false;

  @action
  Future<void> generate() async {
    isLoading = true;
    try {
      final generatedUser = await generateUser.generate();
      user = generatedUser;
      isSaved = false;
    } catch (_) {}
    isLoading = false;
  }

  @action
  Future<void> save() async {
    final user = this.user;
    if (user != null) {
      if (isSaved) {
        final id = this.id;
        if (id != null) {
          await removeUser.remove(id);
          isSaved = false;
        }
      } else {
        final savedId = await saveUser.save(user);
        id = savedId;
        isSaved = true;
      }
    }
  }
}
