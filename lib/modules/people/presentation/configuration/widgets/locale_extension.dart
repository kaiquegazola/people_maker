import 'dart:ui';

extension LocaleExtension on Locale {
  String get name {
    switch (languageCode) {
      case 'en':
        return 'English';
      case 'pt':
        return 'Português';
    }
    return '';
  }
}
