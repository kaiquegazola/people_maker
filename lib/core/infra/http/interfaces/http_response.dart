class HttpResponse {
  HttpResponse({
    this.body,
    this.headers,
    this.statusCode,
  });

  final Map<String, dynamic>? headers;
  final Map<String, dynamic>? body;
  final int? statusCode;
}
