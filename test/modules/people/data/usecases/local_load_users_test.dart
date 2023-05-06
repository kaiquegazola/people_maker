import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:people_maker/core/core.dart';
import 'package:people_maker/modules/people/data/data.dart';
import 'package:people_maker/modules/people/domain/domain.dart';

import '../../../../mocks/mocks.dart';

void main() {
  late UserRepository userRepository;
  late LocalLoadUsers localLoadUsers;

  setUp(() {
    userRepository = UserRepositoryMock();
    localLoadUsers = LocalLoadUsers(repository: userRepository);
  });

  test('should call UserRepository listAll method', () async {
    when(() => userRepository.listAll()).thenAnswer((_) async => []);
    await localLoadUsers.load();
    verify(() => userRepository.listAll()).called(1);
  });

  test('should return list of UserEntity on success', () async {
    when(() => userRepository.listAll()).thenAnswer(
      (_) async => [userEntityMock],
    );

    final result = await localLoadUsers.load();

    expect(result, [userEntityMock]);
  });

  test('should throw UnexpectedError if listAll throws an exception', () async {
    when(() => userRepository.listAll()).thenThrow(Exception());

    expect(() => localLoadUsers.load(), throwsA(isA<UnexpectedError>()));
  });
}
