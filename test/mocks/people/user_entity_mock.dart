import 'package:people_maker/modules/people/domain/domain.dart';

const userEntityMock = UserEntity(
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
