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

  @override
  String get savedEmptyState => 'You have not saved any generated users yet';

  @override
  String get savedSubtitle => 'View your saved user mocks';
}
