import 'package:dio/dio.dart';
import 'package:people_maker/core/domain/domain.dart';
import 'package:people_maker/core/infra/infra.dart';

class HttpDioAdapter extends HttpClient {
  HttpDioAdapter({
    required this.dio,
  });

  final Dio dio;

  @override
  Future<HttpResponse> get({
    required String url,
    Map<String, String>? headers,
  }) async {
    try {
      final response = await dio.get<dynamic>(
        url,
        options: Options(
          headers: headers,
        ),
      );

      if (response.statusCode == 204 && response.data == '') {
        response.data = null;
      }

      return HttpResponse(
        body: handleResponseBody(response),
        headers: _modifyDioHeader(response.headers.map),
        statusCode: response.statusCode,
      );
    } on DioError catch (_) {
      throw UnexpectedError();
    }
  }

  @override
  Future<HttpResponse> post({
    required String url,
    Map<String, dynamic>? body,
    Map<String, String>? headers,
  }) {
    throw UnimplementedError();
  }

  Map<String, dynamic>? handleResponseBody(Response<dynamic> response) {
    final body = response.data;
    if (body != null) {
      if (response.requestOptions.responseType == ResponseType.json) {
        return body as Map<String, dynamic>;
      }
    }
    return null;
  }

  /// By default, dio returns headers with <String,List<String>>, but the common
  /// pattern is <String,String>, so we need to translate it.
  Map<String, String> _modifyDioHeader(Map<String, List<String>> headers) {
    return headers.map<String, String>(
      (key, value) => MapEntry(
        key,
        value[0],
      ),
    );
  }
}
