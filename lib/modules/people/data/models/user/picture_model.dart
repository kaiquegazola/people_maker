import 'package:people_maker/modules/people/domain/entities/entities.dart';

class PictureModel extends PictureEntity {
  const PictureModel({
    required super.image,
    required super.thumbnail,
  });

  factory PictureModel.fromJson(Map<String, dynamic> json) {
    return PictureModel(
      image: json['medium'] as String,
      thumbnail: json['thumbnail'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['medium'] = image;
    map['thumbnail'] = thumbnail;
    return map;
  }
}
