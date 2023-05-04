import 'package:people_maker/core/domain/domain.dart';

export 'general_en_us.dart';
export 'people_en_us.dart';

class EnUS with GeneralEnUS, PeopleEnUS implements Translation {}
