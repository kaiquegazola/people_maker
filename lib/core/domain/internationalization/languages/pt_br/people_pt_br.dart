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

  @override
  String get address => 'Endereço';

  @override
  String get cellPhone => 'Celular';

  @override
  String get copiedToClipboard => 'Copiado para a área de transferência';

  @override
  String get country => 'País';

  @override
  String get dateOfBirth => 'Data de nascimento';

  @override
  String get email => 'E-mail';

  @override
  String get identification => 'Documento de identificação';

  @override
  String get photo => 'Foto';

  @override
  String get name => 'Nome';

  @override
  String get nationality => 'Nacionalidade';

  @override
  String get password => 'Senha';

  @override
  String get phone => 'Telefone';

  @override
  String get userName => 'Nome de usuário';
}
