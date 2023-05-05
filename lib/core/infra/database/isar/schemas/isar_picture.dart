import 'package:isar/isar.dart';

part 'isar_picture.g.dart';

@Embedded()
class IsarPicture {
  IsarPicture({
    this.image,
    this.thumbnail,
  });

  late String? image;
  late String? thumbnail;
}
