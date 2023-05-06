import 'package:flutter_modular/flutter_modular.dart';
import 'package:people_maker/core/core.dart';
import 'package:people_maker/modules/people/domain/domain.dart';

import 'presentation/configuration/configuration.dart';
import 'presentation/detail/detail.dart';
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
    ChildRoute<void>(
      '/detail',
      child: (context, args) => DetailPage(
        controller: Modular.get<DetailController>(),
        languageController: Modular.get<LanguageController>(),
        user: args.data as UserEntity?,
      ),
    ),
  ];
}
