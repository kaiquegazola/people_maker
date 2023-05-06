import 'package:mobx/mobx.dart';
import 'package:people_maker/modules/people/data/data.dart';
import 'package:people_maker/modules/people/domain/domain.dart';

part 'detail_controller.g.dart';

class DetailController = DetailControllerBase with _$DetailController;

abstract class DetailControllerBase with Store {
  DetailControllerBase();

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
}
