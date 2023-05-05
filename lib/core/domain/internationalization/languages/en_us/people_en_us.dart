import 'package:people_maker/core/domain/domain.dart';

class PeopleEnUS implements People {
  @override
  String get generate => 'Generate';

  @override
  String get generateSubtitle => 'Generate your custom user details mock';

  @override
  String get newUser => 'Generate user';

  @override
  String get options => 'Filter options';

  @override
  String get saved => 'Saved';

  @override
  String get save => 'Save';

  @override
  String get savedItems => 'Saved';
}
