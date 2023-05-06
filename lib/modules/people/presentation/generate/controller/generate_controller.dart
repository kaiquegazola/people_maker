import 'package:mobx/mobx.dart';
import 'package:people_maker/modules/people/data/data.dart';
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
  String get userName => UserModel.getUserName(user?.name);

  @computed
  String get userIdentification => UserModel.getUserIdentification(
        user?.identification,
      );

  @computed
  String get userAddress => UserModel.getUserAddress(user?.location);

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
    isLoading = true;
    try {
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
    } catch (_) {}
    isLoading = false;
  }
}
