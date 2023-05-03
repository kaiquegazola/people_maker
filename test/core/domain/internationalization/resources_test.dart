import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:people_maker/core/domain/domain.dart';

// Mock classes for translations
class LoremIpsumMock extends PtBR {
  @override
  String get genericErrorMessage => 'Lorem ipsum';
}

void main() {
  test('should load default translations', () {
    // Arrange
    const locale = Locale('en', 'US');

    // Act
    R.load(locale);

    // Assert
    expect(R.string.genericErrorMessage, GeneralEnUS().genericErrorMessage);
  });

  test('should load Portuguese translations', () {
    // Arrange
    const locale = Locale('pt', 'BR');

    // Act
    R.load(locale);

    // Assert
    expect(R.string.genericErrorMessage, GeneralPtBR().genericErrorMessage);
  });

  test('should initialize custom translations', () {
    // Arrange
    final loremIpsum = LoremIpsumMock();

    // Act
    R.init(loremIpsum);

    // Assert
    expect(R.string.genericErrorMessage, 'Lorem ipsum');
  });
}
