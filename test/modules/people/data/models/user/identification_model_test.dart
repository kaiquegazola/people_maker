import 'package:flutter_test/flutter_test.dart';
import 'package:people_maker/modules/people/data/data.dart';

void main() {
  const validJson = {
    'name': 'CPF',
    'value': '105.048.975-89',
  };

  const identificationModel = IdentificationModel(
    name: 'CPF',
    value: '105.048.975-89',
  );

  group('IdentificationModel', () {
    test('fromJson should create a valid model from JSON', () {
      // Act
      final result = IdentificationModel.fromJson(validJson);

      // Assert
      expect(result, identificationModel);
    });

    test('toJson should create a valid JSON from the model', () {
      // Act
      final result = identificationModel.toJson();

      // Assert
      expect(result, validJson);
    });
  });
}
