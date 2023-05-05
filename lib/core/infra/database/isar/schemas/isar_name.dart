import 'package:isar/isar.dart';

part 'isar_name.g.dart';

@Embedded()
class IsarName {
  IsarName({
    this.title,
    this.first,
    this.last,
  });

  late String? title;
  late String? first;
  late String? last;
}
