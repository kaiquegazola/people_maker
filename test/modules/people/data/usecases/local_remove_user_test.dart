import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:people_maker/modules/people/data/data.dart';

import '../../../../mocks/mocks.dart';

void main() {
  late LocalRemoveUser removeUser;
  late UserRepositoryMock userRepository;

  setUp(() {
    userRepository = UserRepositoryMock();
    removeUser = LocalRemoveUser(repository: userRepository);
  });

  test('should remove user and return true when successful', () async {
    const id = 1;
    when(() => userRepository.remove(id)).thenAnswer((_) async {});

    final result = await removeUser.remove(id);

    expect(result, true);
    verify(() => userRepository.remove(id)).called(1);
  });

  test('should return false when remove user fails', () async {
    const id = 1;
    when(() => userRepository.remove(id)).thenThrow(Exception());

    final result = await removeUser.remove(id);

    expect(result, false);
    verify(() => userRepository.remove(id)).called(1);
  });
}
