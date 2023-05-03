import 'package:flutter/widgets.dart';
import 'package:people_maker/core/domain/domain.dart';

class R {
  static Translation string = PtBR();

  static void load(Locale locale) {
    switch (locale.toString()) {
      case 'en_US':
        string = EnUS();
        break;
      default:
        string = PtBR();
        break;
    }
  }

  static void init(Translation translation) {
    if (translation is PtBR) {
      string = translation;
    }
  }
}
