import 'package:people_maker/core/domain/domain.dart';

class GeneralEnUS implements General {
  @override
  String get genericErrorMessage => 'Oops! Something went wrong!';

  @override
  String get peopleMaker => 'PeopleMaker';

  @override
  String get loading => 'Loading';
}
