import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../resources.dart';

part 'language_controller.g.dart';

class LanguageController = LanguageControllerBase with _$LanguageController;

abstract class LanguageControllerBase with Store {
  late Locale _resolvedLocale;

  @observable
  Locale? locale;

  @observable
  ObservableList<Locale> locales = ObservableList();

  @computed
  Locale get currentLocale => locale ?? _resolvedLocale;

  @action
  void changeLanguage(Locale locale) {
    R.load(locale);
    this.locale = locale;
  }

  Locale? resolveLanguage(Locale? user, Iterable<Locale> supportedLocales) {
    Locale? selectedLocale;
    locales = ObservableList.of(supportedLocales);
    if (user != null) {
      for (final supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == user.languageCode) {
          selectedLocale = user;
        }
      }
    }
    _resolvedLocale = selectedLocale ??= supportedLocales.first;
    R.load(_resolvedLocale);
    return _resolvedLocale;
  }
}
