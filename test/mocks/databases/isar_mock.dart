import 'package:isar/isar.dart';
import 'package:mocktail/mocktail.dart';
import 'package:people_maker/core/core.dart';

class IsarMock extends Mock implements Isar {
  IsarMock() {
    when(() => writeTxn<void>(any())).thenAnswer((invocation) async {
      final firstParameter = invocation.positionalArguments[0];
      final anonymousFunction = firstParameter as Future<void> Function();
      await anonymousFunction.call();
    });
  }
}

class IsarUserMock extends Mock implements IsarCollection<IsarUser> {}
