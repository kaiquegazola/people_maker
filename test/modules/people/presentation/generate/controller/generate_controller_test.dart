import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:people_maker/modules/people/data/data.dart';
import 'package:people_maker/modules/people/domain/entities/entities.dart';
import 'package:people_maker/modules/people/domain/usecases/usecases.dart';
import 'package:people_maker/modules/people/presentation/generate/generate.dart';

import '../../../../../mocks/mocks.dart';

void main() {
  late GenerateControllerBase controller;
  late GenerateUser generateUser;
  late SaveUser saveUser;
  late RemoveUser removeUser;

  setUp(() {
    generateUser = GenerateUserMock();
    saveUser = SaveUserMock();
    removeUser = RemoveUserMock();
    controller = GenerateController(
      generateUser: generateUser,
      saveUser: saveUser,
      removeUser: removeUser,
    );
  });

  setUpAll(() {
    registerFallbackValue(userEntityMock);
  });

  group('generate user', () {
    test('should set isLoading to true on generate', () async {
      // Arrange
      final completer = Completer<UserEntity>();
      when(() => generateUser.generate()).thenAnswer((_) => completer.future);

      // Act
      final generateFuture = controller.generate();

      // Assert
      expect(controller.isLoading, true);
      completer.complete(userEntityMock);
      await generateFuture;
    });

    test('should set isLoading to false when generate completes', () async {
      // Arrange
      when(() => generateUser.generate())
          .thenAnswer((_) async => userEntityMock);

      // Act
      await controller.generate();

      // Assert
      expect(controller.isLoading, false);
    });

    test('should set user when generate completes', () async {
      // Arrange
      when(() => generateUser.generate())
          .thenAnswer((_) async => userEntityMock);

      // Act
      await controller.generate();

      // Assert
      expect(controller.user, userEntityMock);
    });

    test('should return first and last name concatenated', () async {
      // Arrange
      controller.user = userEntityMock;

      // Act
      final userName = controller.userName;

      // Assert
      expect(userName, 'John Doe');
    });

    test('should return identification name and value concatenated', () async {
      // Arrange
      controller.user = userEntityMock;

      // Act
      final userIdentification = controller.userIdentification;

      // Assert
      expect(userIdentification, 'SSN: 123-45-6789');
    });

    test('should return only identification value if name is null', () async {
      // Arrange
      const identification = IdentificationEntity(
        value: '123-45-6789',
        name: null,
      );
      final newUser = UserModel.fromEntity(userEntityMock).copyWith(
        identification: identification,
      );
      controller.user = newUser.toEntity();

      // Act
      final userIdentification = controller.userIdentification;

      // Assert
      expect(userIdentification, '123-45-6789');
    });
  });

  group('save', () {
    test('should save user when save is called and not saved yet', () async {
      when(() => saveUser.save(userEntityMock)).thenAnswer((_) async => 1);
      controller
        ..user = userEntityMock
        ..isSaved = false;
      await controller.save();
      verify(() => saveUser.save(userEntityMock)).called(1);
      expect(controller.isSaved, true);
    });

    test('should remove user when save is called and user is saved', () async {
      const userId = 1;
      controller
        ..user = userEntityMock
        ..id = userId
        ..isSaved = true;
      when(() => removeUser.remove(userId)).thenAnswer((_) async => true);

      await controller.save();

      verify(() => removeUser.remove(userId)).called(1);
      expect(controller.isSaved, false);
    });

    test('should not call save or remove when save is called and user is null',
        () async {
      controller
        ..user = null
        ..isSaved = false;

      await controller.save();

      verifyNever(() => saveUser.save(any()));
      verifyNever(() => removeUser.remove(any()));
    });
  });
}
