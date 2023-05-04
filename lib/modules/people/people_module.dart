import 'package:flutter_modular/flutter_modular.dart';
import 'package:people_maker/modules/people/data/data.dart';
import 'package:people_maker/modules/people/presentation/generate/generate.dart';

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
          (i) => GenerateController(
            generateUser: i.get<RemoteGenerateUser>(),
          ),
        ),
      ];

  @override
  List<ModularRoute> get routes => PeopleRouting.routes;
}
