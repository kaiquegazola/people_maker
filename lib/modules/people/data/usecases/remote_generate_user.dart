import 'package:people_maker/core/core.dart';
import 'package:people_maker/modules/people/data/models/models.dart';
import 'package:people_maker/modules/people/domain/domain.dart';

class RemoteGenerateUser implements GenerateUser {
  RemoteGenerateUser({
    required this.client,
  });

  final HttpClient client;

  @override
  Future<UserEntity> generate() async {
    try {
      final result = await client.get(url: 'https://randomuser.me/api');
      final body = result.body;
      if (body != null) {
        final results = body['results'] as List<Map<String, dynamic>>;
        return UserModel.fromJson(results.first);
      }
      throw UnexpectedError();
    } catch (_) {
      throw UnexpectedError();
    }
  }
}
