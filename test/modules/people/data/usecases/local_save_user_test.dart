import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:people_maker/core/core.dart';
import 'package:people_maker/modules/people/data/data.dart';
import 'package:people_maker/modules/people/domain/domain.dart';

import '../../../../mocks/mocks.dart';

void main() {
  late LocalSaveUser saveUser;
  late UserRepository userRepository;

  setUp(() {
    userRepository = UserRepositoryMock();
    saveUser = LocalSaveUser(repository: userRepository);
  });

  setUpAll(() {
    registerFallbackValue(userEntityMock);
  });

  test('should save user and return id when successful', () async {
    const id = 1;
    when(() => userRepository.add(any())).thenAnswer((_) async => id);

    final result = await saveUser.save(userEntityMock);

    expect(result, id);
    verify(() => userRepository.add(any())).called(1);
  });

  test('should throw UnexpectedError when saving user fails', () async {
    when(() => userRepository.add(any())).thenThrow(Exception());

    expect(
      () => saveUser.save(userEntityMock),
      throwsA(isA<UnexpectedError>()),
    );
    verify(() => userRepository.add(any())).called(1);
  });
}
