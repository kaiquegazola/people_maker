import 'package:people_maker/core/domain/domain.dart';

class PeopleEnUS implements People {
  @override
  String get generate => 'Generate';

  @override
  String get generateSubtitle => 'Generate your custom user details mock';

  @override
  String get newUser => 'Generate user';

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

  @override
  String get address => 'Address';

  @override
  String get cellPhone => 'Cellphone';

  @override
  String get copiedToClipboard => 'Copied to clipboard';

  @override
  String get country => 'Country';

  @override
  String get dateOfBirth => 'Date of birth';

  @override
  String get email => 'E-mail';

  @override
  String get identification => 'Identity card';

  @override
  String get photo => 'Photo';

  @override
  String get name => 'Name';

  @override
  String get nationality => 'Nationality';

  @override
  String get password => 'Password';

  @override
  String get phone => 'Phone';

  @override
  String get userName => 'Username';
}
