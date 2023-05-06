import 'package:people_maker/modules/people/data/data.dart';
import 'package:people_maker/modules/people/domain/domain.dart';

const userEntityMock = UserEntity(
  id: 123,
  gender: 'male',
  name: NameEntity(title: 'Mr', first: 'John', last: 'Doe'),
  location: LocationEntity(
    city: 'New York',
    state: 'New York',
    country: 'United States',
    postcode: '10001',
    street: '5th Avenue',
    number: 1234,
  ),
  email: 'johndoe@example.com',
  login: LoginEntity(username: 'johndoe', password: '123456'),
  phone: '(555) 555-1212',
  cell: '(555) 555-1212',
  identification: IdentificationEntity(
    name: 'SSN',
    value: '123-45-6789',
  ),
  picture: PictureEntity(
    image: 'https://randomuser.me/api/portraits/men/1.jpg',
    thumbnail: 'https://randomuser.me/api/portraits/thumb/men/1.jpg',
  ),
  nat: 'US',
  dateOfBirth: '1990-01-01',
);

const userValidJson = {
  'gender': 'male',
  'name': {'title': 'Mr', 'first': 'Vando', 'last': 'Nogueira'},
  'location': {
    'street': {'number': 5800, 'name': 'Avenida da Legalidade'},
    'city': 'Jequié',
    'state': 'Goiás',
    'country': 'Brazil',
    'postcode': '74982'
  },
  'email': 'vando.nogueira@example.com',
  'login': {'username': 'crazypeacock607', 'password': 'hastings'},
  'dob': {'date': '1979-11-05T16:14:17.471Z'},
  'phone': '(26) 0232-8027',
  'cell': '(25) 4095-1869',
  'id': {'name': 'CPF', 'value': '105.048.975-89'},
  'picture': {
    'medium': 'https://randomuser.me/api/portraits/med/men/18.jpg',
    'thumbnail': 'https://randomuser.me/api/portraits/thumb/men/18.jpg'
  },
  'nat': 'BR'
};

final userModelMock = UserModel.fromJson(userValidJson);
final isarUser = userModelMock.toIsar();
