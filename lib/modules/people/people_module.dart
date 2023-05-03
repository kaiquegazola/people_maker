import 'package:flutter_modular/flutter_modular.dart';
import 'package:people_maker/modules/people/people_routing.dart';

class PeopleModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => PeopleRouting.routes;
}
