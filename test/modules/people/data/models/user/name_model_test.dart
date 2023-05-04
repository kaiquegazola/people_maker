import 'package:flutter_test/flutter_test.dart';
import 'package:people_maker/modules/people/data/data.dart';

void main() {
  const validJson = {
    'title': 'Mr',
    'first': 'John',
    'last': 'Doe',
  };

  const nameModel = NameModel(
    title: 'Mr',
    first: 'John',
    last: 'Doe',
  );

  group('NameModel', () {
    test('fromJson should create a valid model from JSON', () {
      // Act
      final result = NameModel.fromJson(validJson);

      // Assert
      expect(result, nameModel);
    });

    test('toJson should create a valid JSON from the model', () {
      // Act
      final result = nameModel.toJson();

      // Assert
      expect(result, validJson);
    });
  });
}
