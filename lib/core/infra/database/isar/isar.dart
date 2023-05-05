import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'schemas/schemas.dart';

export 'schemas/schemas.dart';

class IsarDatabase {
  Future<Isar> openDatabase() async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      [IsarUserSchema],
      directory: dir.path,
    );
    return isar;
  }
}
