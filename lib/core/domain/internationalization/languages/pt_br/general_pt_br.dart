import 'package:people_maker/core/domain/domain.dart';

class GeneralPtBR implements General {
  @override
  String get genericErrorMessage => 'Ops! Algo deu errado!';

  @override
  String get peopleMaker => 'PeopleMaker';

  @override
  String get loading => 'Carregando';
}
