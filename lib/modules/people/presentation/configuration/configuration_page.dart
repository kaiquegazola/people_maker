import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:people_maker/core/core.dart';
import 'package:people_maker/modules/people/presentation/configuration/widgets/language_button.dart';
import 'package:people_maker/ui/ui.dart';

class ConfigurationPage extends StatelessWidget {
  const ConfigurationPage({
    required this.controller,
    super.key,
  });

  final LanguageController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Observer(
        builder: (context) {
          final locales = controller.locales;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PageTitleWidget(
                title: R.string.peopleMaker,
                subTitle: R.string.settings,
              ),
              if (locales.isNotEmpty)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ...locales.map(
                      (locale) {
                        final enabled = controller.currentLocale != locale;
                        return LanguageButton(
                          enabled: enabled,
                          changeLanguage: () {
                            controller.changeLanguage(locale);
                          },
                          locale: locale,
                        );
                      },
                    ),
                  ],
                ),
            ],
          );
        },
      ),
    );
  }
}
