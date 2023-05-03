import 'package:people_maker/core/infra/http/interfaces/interfaces.dart';

abstract class HttpClient {
  Future<HttpResponse> post({
    required String url,
    Map<String, dynamic>? body,
    Map<String, String>? headers,
  });

  Future<HttpResponse> get({
    required String url,
    Map<String, String>? headers,
  });
}
