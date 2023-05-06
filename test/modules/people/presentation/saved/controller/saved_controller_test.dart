import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:people_maker/modules/people/domain/domain.dart';
import 'package:people_maker/modules/people/presentation/presentation.dart';

import '../../../../../mocks/mocks.dart';

void main() {
  late LoadUsers loadUsers;
  late RemoveUser removeUser;
  late SavedController savedController;

  setUp(() {
    loadUsers = LoadUsersMock();
    removeUser = RemoveUserMock();
    savedController = SavedController(
      loadUsers: loadUsers,
      removeUser: removeUser,
    );
  });

  test('should call loadUsers.load on initialization', () {
    // Assert
    verify(() => loadUsers.load()).called(1);
  });

  test('should call loadUsers.load on load method', () async {
    // Arrange
    when(() => loadUsers.load()).thenAnswer((_) async => [userEntityMock]);

    // Act
    await savedController.load();

    // Assert
    verify(() => loadUsers.load()).called(2);
  });

  test('should set users to empty list if loadUsers.load throws an exception',
      () async {
    // Arrange
    when(() => loadUsers.load()).thenThrow(Exception());

    // Act
    await savedController.load();

    // Assert
    expect(savedController.users, isEmpty);
  });

  test('should call removeUser.remove and loadUsers.load on remove method',
      () async {
    // Arrange
    when(() => loadUsers.load()).thenAnswer((_) async => [userEntityMock]);
    when(() => removeUser.remove(any())).thenAnswer((_) async => true);

    // Act
    await savedController.remove(userEntityMock);

    // Assert
    verify(() => removeUser.remove(any())).called(1);
    verify(() => loadUsers.load()).called(2);
  });
}
