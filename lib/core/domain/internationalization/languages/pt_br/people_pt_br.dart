import 'package:people_maker/core/domain/domain.dart';

class PeoplePtBR implements People {
  @override
  String get generate => 'Gerar';

  @override
  String get saved => 'Salvos';

  @override
  String get generateSubtitle => 'Crie o seu mock de usuários personalizados';

  @override
  String get newUser => 'Gerar usuário';

  @override
  String get options => 'Opções de filtro';
}
