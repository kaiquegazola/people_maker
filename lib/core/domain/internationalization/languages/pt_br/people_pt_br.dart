import 'package:people_maker/core/domain/domain.dart';

class PeoplePtBR implements People {
  @override
  String get generate => 'Gerar';

  @override
  String get generateSubtitle => 'Crie o seu mock de usuários personalizados';

  @override
  String get newUser => 'Gerar usuário';

  @override
  String get saved => 'Salvo';

  @override
  String get save => 'Salvar';

  @override
  String get savedItems => 'Salvos';

  @override
  String get savedEmptyState => 'Você ainda não salvou nenhum usuário gerado';

  @override
  String get savedSubtitle => 'Veja seus mocks de usuário salvos';
}
