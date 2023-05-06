import 'package:people_maker/core/core.dart';
import 'package:people_maker/modules/people/domain/entities/entities.dart';

class PictureModel extends PictureEntity {
  const PictureModel({
    required super.image,
    required super.thumbnail,
  });

  factory PictureModel.fromJson(Map<String, dynamic> json) {
    return PictureModel(
      image: json['large'] as String,
      thumbnail: json['thumbnail'] as String,
    );
  }

  IsarPicture toIsar() {
    return IsarPicture(
      image: image,
      thumbnail: thumbnail,
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['large'] = image;
    map['thumbnail'] = thumbnail;
    return map;
  }
}
