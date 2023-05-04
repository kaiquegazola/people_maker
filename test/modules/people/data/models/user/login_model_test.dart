import 'package:flutter_test/flutter_test.dart';
import 'package:people_maker/modules/people/data/data.dart';

void main() {
  const validJson = {
    'username': 'crazypeacock607',
    'password': 'j73tUJvjj73tUJvj',
  };

  const loginModel = LoginModel(
    username: 'crazypeacock607',
    password: 'j73tUJvjj73tUJvj',
  );

  group('LoginModel', () {
    test('fromJson should create a valid model from JSON', () {
      // Act
      final result = LoginModel.fromJson(validJson);

      // Assert
      expect(result, loginModel);
    });

    test('toJson should create a valid JSON from the model', () {
      // Act
      final result = loginModel.toJson();

      // Assert
      expect(result, validJson);
    });
  });
}
