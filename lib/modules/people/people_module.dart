import 'package:flutter_modular/flutter_modular.dart';
import 'package:people_maker/modules/people/data/data.dart';
import 'package:people_maker/modules/people/presentation/presentation.dart';

import 'people_routing.dart';

class PeopleModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory(
          (i) => RemoteGenerateUser(
            client: i.get(),
          ),
        ),
        Bind.factory(
          (i) => IsarUserRepository(
            isarDb: i.get(),
          ),
        ),
        Bind.factory(
          (i) => LocalSaveUser(
            repository: i.get(),
          ),
        ),
        Bind.factory(
          (i) => LocalRemoveUser(
            repository: i.get(),
          ),
        ),
        Bind.factory(
          (i) => LocalLoadUsers(
            repository: i.get(),
          ),
        ),
        Bind.factory(
          (i) => GenerateController(
            generateUser: i.get<RemoteGenerateUser>(),
            saveUser: i.get<LocalSaveUser>(),
            removeUser: i.get<LocalRemoveUser>(),
          ),
        ),
        Bind.factory(
          (i) => SavedController(
            loadUsers: i.get<LocalLoadUsers>(),
            removeUser: i.get<LocalRemoveUser>(),
          ),
        ),
      ];

  @override
  List<ModularRoute> get routes => PeopleRouting.routes;
}
