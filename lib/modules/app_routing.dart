import 'package:flutter_modular/flutter_modular.dart';
import 'package:people_maker/modules/guards/guards.dart';
import 'package:people_maker/modules/people/people_module.dart';

class AppRouting {
  static final List<ModularRoute> routes = [
    ModuleRoute<void>(
      '/people/',
      module: PeopleModule(),
      guards: [
        AsyncBindingGuard(),
      ],
    ),
  ];
}
