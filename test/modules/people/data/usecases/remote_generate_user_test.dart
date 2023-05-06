import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:people_maker/core/core.dart';
import 'package:people_maker/modules/people/data/models/models.dart';
import 'package:people_maker/modules/people/data/usecases/usecases.dart';
import 'package:people_maker/modules/people/domain/entities/entities.dart';

class MockHttpClient extends Mock implements HttpClient {}

void main() {
  late RemoteGenerateUser remoteGenerateUser;
  late MockHttpClient mockHttpClient;

  setUp(() {
    mockHttpClient = MockHttpClient();
    remoteGenerateUser = RemoteGenerateUser(client: mockHttpClient);
  });

  group('RemoteGenerateUser', () {
    const responseJson = <String, dynamic>{
      'results': [
        {
          'gender': 'female',
          'name': {
            'title': 'Miss',
            'first': 'Rusyavka',
            'last': 'Ternopilskiy'
          },
          'location': {
            'street': {'number': 1067, 'name': 'Vatutina'},
            'city': 'Kolomyia',
            'state': 'Zaporizka',
            'country': 'Ukraine',
            'postcode': 21680,
            'coordinates': {'latitude': '74.6873', 'longitude': '131.3296'},
            'timezone': {
              'offset': '+9:00',
              'description': 'Tokyo, Seoul, Osaka, Sapporo, Yakutsk'
            }
          },
          'email': 'rusyavka.ternopilskiy@example.com',
          'login': {
            'uuid': 'cd4d1164-2602-4ae0-99f2-a47f92b94b72',
            'username': 'blackmouse339',
            'password': 'vivian',
            'salt': 'ycjN3bKI',
            'md5': 'ac9fa3c7e97231510d53b32d5f16f205',
            'sha1': '2c009a0ff1bec83129d659e1f88320fd9d9e7792',
          },
          'dob': {'date': '1971-08-17T04:26:44.293Z', 'age': 51},
          'registered': {'date': '2021-06-29T05:56:21.189Z', 'age': 1},
          'phone': '(066) S52-7417',
          'cell': '(067) B60-8986',
          'id': {'name': '', 'value': null},
          'picture': {
            'large': 'https://randomuser.me/api/portraits/women/57.jpg',
            'medium': 'https://randomuser.me/api/portraits/women/57.jpg',
            'thumbnail':
                'https://randomuser.me/api/portraits/thumb/women/57.jpg'
          },
          'nat': 'UA'
        }
      ],
      'info': {
        'seed': 'ff73e523b130e5d2',
        'results': 1,
        'page': 1,
        'version': '1.4'
      }
    };

    test('generate() should return a valid UserEntity', () async {
      // Arrange
      when(() => mockHttpClient.get(url: 'https://randomuser.me/api'))
          .thenAnswer(
        (_) async => HttpResponse(
          statusCode: 200,
          body: responseJson,
        ),
      );

      // Act
      final result = await remoteGenerateUser.generate();

      // Assert
      expect(result, isA<UserEntity>());
      expect(result, isA<UserModel>());
    });

    test('generate() should throw UnexpectedError on failure', () async {
      // Arrange
      when(() => mockHttpClient.get(url: 'https://randomuser.me/api'))
          .thenThrow(
        Exception(),
      );

      final future = remoteGenerateUser.generate();

      // Act & Assert
      expect(
        future,
        throwsA(isA<UnexpectedError>()),
      );
    });
  });
}
