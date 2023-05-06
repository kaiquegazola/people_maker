import 'package:flutter_test/flutter_test.dart';
import 'package:people_maker/modules/people/data/data.dart';

import '../../../../../mocks/mocks.dart';

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
    image: 'https://randomuser.me/api/portraits/men/18.jpg',
    thumbnail: 'https://randomuser.me/api/portraits/thumb/men/18.jpg',
  ),
  nat: 'BR',
  dateOfBirth: '1979-11-05T16:14:17.471Z',
);

void main() {
  test('fromJson should create a valid model from JSON', () {
    // Act
    final result = UserModel.fromJson(userValidJson);

    // Assert
    expect(result, userModel);
  });

  test('toJson should create a valid JSON from the model', () {
    // Act
    final result = userModel.toJson();

    // Assert
    expect(result, userValidJson);
  });

  test('toEntity should return a properly mapped UserEntity', () {
    // Arrange
    final userModel = UserModel.fromEntity(userEntityMock);

    // Act
    final userEntity = userModel.toEntity();

    // Assert
    expect(userEntity, userEntityMock);
  });

  test('fromEntity should return a properly mapped UserModel', () {
    // Act
    final userModel = UserModel.fromEntity(userEntityMock);

    // Assert
    expect(userModel.gender, userEntityMock.gender);
    expect(userModel.name, userEntityMock.name);
    expect(userModel.location, userEntityMock.location);
    expect(userModel.email, userEntityMock.email);
    expect(userModel.login, userEntityMock.login);
    expect(userModel.phone, userEntityMock.phone);
    expect(userModel.cell, userEntityMock.cell);
    expect(userModel.identification, userEntityMock.identification);
    expect(userModel.picture, userEntityMock.picture);
    expect(userModel.nat, userEntityMock.nat);
    expect(userModel.dateOfBirth, userEntityMock.dateOfBirth);
  });

  test('toIsar should return a properly mapped IsarUser', () {
    // Arrange
    final model = UserModel.fromJson(userValidJson);

    // Act
    final isar = model.toIsar();

    // Assert
    expect(isar.gender, model.gender);
    expect(isar.email, model.email);
    expect(isar.phone, model.phone);
    expect(isar.cell, model.cell);
    expect(isar.nat, model.nat);
    expect(isar.dateOfBirth, model.dateOfBirth);
    expect(isar.name.first, model.name.first);
    expect(isar.name.last, model.name.last);
    expect(isar.name.title, model.name.title);
    expect(isar.location.city, model.location.city);
    expect(isar.location.street, model.location.street);
    expect(isar.location.postcode, model.location.postcode);
    expect(isar.location.country, model.location.country);
    expect(isar.location.state, model.location.state);
    expect(isar.location.number, model.location.number);
    expect(isar.login.password, model.login.password);
    expect(isar.login.username, model.login.username);
    expect(isar.picture.image, model.picture.image);
    expect(isar.picture.thumbnail, model.picture.thumbnail);
    expect(isar.identification.name, model.identification.name);
    expect(isar.identification.value, model.identification.value);
  });
}
