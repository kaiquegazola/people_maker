import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:people_maker/ui/colors/colors.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key}) {
    Modular.setInitialRoute('/people/');
  }

  @override
  Widget build(BuildContext context) {
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
    );
  }
}
