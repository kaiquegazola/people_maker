// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LanguageController on LanguageControllerBase, Store {
  Computed<Locale>? _$currentLocaleComputed;

  @override
  Locale get currentLocale =>
      (_$currentLocaleComputed ??= Computed<Locale>(() => super.currentLocale,
              name: 'LanguageControllerBase.currentLocale'))
          .value;

  late final _$localeAtom =
      Atom(name: 'LanguageControllerBase.locale', context: context);

  @override
  Locale? get locale {
    _$localeAtom.reportRead();
    return super.locale;
  }

  @override
  set locale(Locale? value) {
    _$localeAtom.reportWrite(value, super.locale, () {
      super.locale = value;
    });
  }

  late final _$localesAtom =
      Atom(name: 'LanguageControllerBase.locales', context: context);

  @override
  ObservableList<Locale> get locales {
    _$localesAtom.reportRead();
    return super.locales;
  }

  @override
  set locales(ObservableList<Locale> value) {
    _$localesAtom.reportWrite(value, super.locales, () {
      super.locales = value;
    });
  }

  late final _$LanguageControllerBaseActionController =
      ActionController(name: 'LanguageControllerBase', context: context);

  @override
  void changeLanguage(Locale locale) {
    final _$actionInfo = _$LanguageControllerBaseActionController.startAction(
        name: 'LanguageControllerBase.changeLanguage');
    try {
      return super.changeLanguage(locale);
    } finally {
      _$LanguageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
locale: ${locale},
locales: ${locales},
currentLocale: ${currentLocale}
    ''';
  }
}
