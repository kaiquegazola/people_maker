import 'package:flutter_modular/flutter_modular.dart';
import 'package:people_maker/core/core.dart';

import 'presentation/configuration/configuration.dart';
import 'presentation/generate/generate.dart';
import 'presentation/home/home.dart';
import 'presentation/saved/saved.dart';

class PeopleRouting {
  static final List<ModularRoute> routes = [
    ChildRoute<void>(
      '/',
      child: (context, args) => HomePage(),
      children: [
        ChildRoute(
          '/generate/',
          child: (context, args) => GeneratePage(
            controller: Modular.get(),
          ),
          transition: TransitionType.noTransition,
        ),
        ChildRoute(
          '/saved/',
          child: (context, args) => SavedPage(
            controller: Modular.get<SavedController>(),
          ),
          transition: TransitionType.noTransition,
        ),
        ChildRoute(
          '/configuration/',
          child: (context, args) => ConfigurationPage(
            controller: Modular.get<LanguageController>(),
          ),
          transition: TransitionType.noTransition,
        ),
      ],
    ),
  ];
}
