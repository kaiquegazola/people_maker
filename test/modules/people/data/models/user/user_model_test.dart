import 'package:flutter_test/flutter_test.dart';
import 'package:people_maker/modules/people/data/data.dart';

const validJson = {
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

const userModel = UserModel(
  gender: 'male',
  name: NameModel(
    title: 'Mr',
    first: 'Vando',
    last: 'Nogueira',
  ),
  location: LocationModel(
    city: 'Jequié',
    state: 'Goiás',
    country: 'Brazil',
    postcode: '74982',
    street: 'Avenida da Legalidade',
    number: 5800,
  ),
  email: 'vando.nogueira@example.com',
  login: LoginModel(
    username: 'crazypeacock607',
    password: 'hastings',
  ),
  phone: '(26) 0232-8027',
  cell: '(25) 4095-1869',
  identification: IdentificationModel(
    name: 'CPF',
    value: '105.048.975-89',
  ),
  picture: PictureModel(
    image: 'https://randomuser.me/api/portraits/med/men/18.jpg',
    thumbnail: 'https://randomuser.me/api/portraits/thumb/men/18.jpg',
  ),
  nat: 'BR',
  dateOfBirth: '1979-11-05T16:14:17.471Z',
);

void main() {
  group('UserModel', () {
    test('fromJson should create a valid model from JSON', () {
      // Act
      final result = UserModel.fromJson(validJson);

      // Assert
      expect(result, userModel);
    });

    test('toJson should create a valid JSON from the model', () {
      // Act
      final result = userModel.toJson();

      // Assert
      expect(result, validJson);
    });
  });
}
