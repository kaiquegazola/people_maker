import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:people_maker/core/domain/domain.dart';
import 'package:people_maker/core/infra/http/implementations/http_dio_adapter.dart';

import '../../../../mocks/mocks.dart';

void main() {
  late HttpDioAdapter httpDioAdapter;
  late Dio mockDio;
  const url = 'https://api.example.com/users';

  setUp(() {
    mockDio = DioMock();
    httpDioAdapter = HttpDioAdapter(dio: mockDio);
  });

  test('should perform a GET request', () async {
    // Arrange
    const statusCode = 200;
    final headers = <String, List<String>>{
      'content-type': ['application/json']
    };
    final responseBody = <String, dynamic>{'message': 'success'};
    final response = Response<dynamic>(
      requestOptions: RequestOptions(path: url),
      data: responseBody,
      headers: Headers.fromMap(headers),
      statusCode: statusCode,
    );

    when(
      () => mockDio.get<dynamic>(
        any(),
        options: any(named: 'options'),
      ),
    ).thenAnswer((_) async => response);

    // Act
    final result = await httpDioAdapter.get(url: url);

    // Assert
    expect(result.statusCode, statusCode);
    expect(result.headers, {'content-type': 'application/json'});
    expect(result.body, responseBody);
    verify(
      () => mockDio.get<dynamic>(url, options: any(named: 'options')),
    ).called(1);
  });

  test('should throw UnexpectedError on DioError', () async {
    // Arrange
    when(
      () => mockDio.get<dynamic>(
        any(),
        options: any(named: 'options'),
      ),
    ).thenThrow(
      DioError(
        requestOptions: RequestOptions(path: url),
      ),
    );

    // Act
    final call = httpDioAdapter.get;

    // Assert
    expect(() => call(url: url), throwsA(isA<UnexpectedError>()));
  });
}
