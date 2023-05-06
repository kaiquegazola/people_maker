import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:people_maker/core/domain/internationalization/controller/language_controller.dart';
import 'package:people_maker/ui/colors/colors.dart';

class AppWidget extends StatefulWidget {
  AppWidget({super.key}) {
    Modular.setInitialRoute('/people/');
  }

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  late LanguageController languageController;

  @override
  void initState() {
    languageController = Modular.get<LanguageController>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return MaterialApp.router(
          title: 'People Maker',
          theme: ThemeData.from(
            textTheme: GoogleFonts.poppinsTextTheme(),
            colorScheme: ColorScheme.fromSeed(
              seedColor: PeopleColors.blue600,
            ),
          ),
          routeInformationParser: Modular.routeInformationParser,
          routerDelegate: Modular.routerDelegate,
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('pt', 'BR'),
            Locale('en', 'US'),
          ],
          localeResolutionCallback: languageController.resolveLanguage,
          locale: languageController.locale,
        );
      },
    );
  }
}
