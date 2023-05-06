import 'package:mobx/mobx.dart';
import 'package:people_maker/modules/people/data/data.dart';
import 'package:people_maker/modules/people/domain/domain.dart';

part 'saved_controller.g.dart';

class SavedController = SavedControllerBase with _$SavedController;

abstract class SavedControllerBase with Store {
  SavedControllerBase({
    required this.loadUsers,
    required this.removeUser,
  }) {
    load();
  }

  final LoadUsers loadUsers;
  final RemoveUser removeUser;

  @observable
  ObservableList<UserEntity> users = ObservableList();

  @observable
  bool isLoading = true;

  String userName(NameEntity? name) => UserModel.getUserName(name);

  String userAddress(LocationEntity? location) => UserModel.getUserAddress(
        location,
      );

  String userIdentification(IdentificationEntity? identification) {
    return UserModel.getUserIdentification(
      identification,
    );
  }

  Future<void> load() async {
    isLoading = true;
    try {
      final fetchedUsers = await loadUsers.load();
      users = ObservableList.of(fetchedUsers);
    } catch (_) {}
    isLoading = false;
  }

  Future<void> remove(UserEntity user) async {
    isLoading = true;
    try {
      final id = user.id;
      if (id != null) {
        await removeUser.remove(id);
        await load();
      }
    } catch (_) {}
    isLoading = false;
  }
}
