import 'package:flutter_test/flutter_test.dart';
import 'package:people_maker/modules/people/data/data.dart';

void main() {
  const validJson = {
    'street': {'number': 5800, 'name': 'Avenida da Legalidade'},
    'city': 'Jequié',
    'state': 'Goiás',
    'country': 'Brazil',
    'postcode': '74982',
  };

  const locationModel = LocationModel(
    city: 'Jequié',
    state: 'Goiás',
    country: 'Brazil',
    postcode: '74982',
    street: 'Avenida da Legalidade',
    number: 5800,
  );

  group('LocationModel', () {
    test('fromJson should create a valid model from JSON', () {
      // Act
      final result = LocationModel.fromJson(validJson);

      // Assert
      expect(result, locationModel);
    });

    test('toJson should create a valid JSON from the model', () {
      // Act
      final result = locationModel.toJson();

      // Assert
      expect(result, validJson);
    });
  });
}
