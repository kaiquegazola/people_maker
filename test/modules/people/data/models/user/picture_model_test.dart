import 'package:flutter_test/flutter_test.dart';
import 'package:people_maker/modules/people/data/data.dart';

void main() {
  const validJson = {
    'medium': 'https://randomuser.me/api/portraits/med/men/18.jpg',
    'thumbnail': 'https://randomuser.me/api/portraits/thumb/men/18.jpg',
  };

  const pictureModel = PictureModel(
    image: 'https://randomuser.me/api/portraits/med/men/18.jpg',
    thumbnail: 'https://randomuser.me/api/portraits/thumb/men/18.jpg',
  );

  group('PictureModel', () {
    test('fromJson should create a valid model from JSON', () {
      // Act
      final result = PictureModel.fromJson(validJson);

      // Assert
      expect(result, pictureModel);
    });

    test('toJson should create a valid JSON from the model', () {
      // Act
      final result = pictureModel.toJson();

      // Assert
      expect(result, validJson);
    });
  });
}
