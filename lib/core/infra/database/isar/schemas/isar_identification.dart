import 'package:isar/isar.dart';

part 'isar_identification.g.dart';

@Embedded()
class IsarIdentification {
  IsarIdentification({
    this.value,
    this.name,
  });

  String? name;
  String? value;
}
