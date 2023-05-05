import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';
import 'package:mocktail/mocktail.dart';
import 'package:people_maker/core/core.dart';
import 'package:people_maker/modules/people/data/data.dart';

import '../../../../mocks/mocks.dart';

void main() {
  late IsarUserRepository repository;
  late Isar isarDb;
  late IsarCollection<IsarUser> isarUsers;
  final isarUser = userModelMock.toIsar();

  setUp(() {
    isarDb = IsarMock();
    isarUsers = IsarUserMock();
    repository = IsarUserRepository(isarDb: isarDb);
    when(() => isarDb.isarUsers).thenReturn(isarUsers);
  });

  setUpAll(() {
    registerFallbackValue(isarUser);
  });

  group('add', () {
    test('should add a user and return its id', () async {
      // Arrange
      when(() => isarUsers.put(any())).thenAnswer((_) async => 1);

      // Act
      final id = await repository.add(userModelMock);

      // Assert
      expect(id, 1);
      verify(() => isarDb.writeTxn<void>(any())).called(1);
      verify(() => isarDb.isarUsers.put(any())).called(1);
    });

    test('should throw UnexpectedError when an exception occurs', () async {
      // Arrange
      when(() => isarDb.writeTxn(any())).thenThrow(Exception());

      // Act
      final call = repository.add;

      // Assert
      expect(() => call(userEntityMock), throwsA(isA<UnexpectedError>()));
    });
  });

  group('remove', () {
    test('should remove a user by its id', () async {
      // Arrange
      when(() => isarUsers.delete(any())).thenAnswer((_) async => true);

      // Act
      await repository.remove(1);

      // Assert
      verify(() => isarUsers.delete(any())).called(1);
    });

    test('should throw UnexpectedError when an exception occurs', () async {
      // Arrange
      when(() => isarDb.writeTxn(any())).thenThrow(Exception());

      // Act
      final call = repository.remove;

      // Assert
      expect(() => call(1), throwsA(isA<UnexpectedError>()));
    });
  });

  group('listAll', () {
    test('should throw UnexpectedError when an exception occurs', () async {
      // Arrange
      when(() => isarDb.isarUsers.where().findAll()).thenThrow(Exception());

      // Act
      final call = repository.listAll;

      // Assert
      expect(call, throwsA(isA<UnexpectedError>()));
    });
  });
}
