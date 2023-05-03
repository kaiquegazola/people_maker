import 'package:flutter_modular/flutter_modular.dart';
import 'package:people_maker/modules/people/presentation/home/home.dart';

class PeopleRouting {
  static final List<ModularRoute> routes = [
    ChildRoute<void>(
      '/',
      child: (context, args) => const HomePage(),
    ),
  ];
}
