import 'package:equatable/equatable.dart';

class PictureEntity extends Equatable {
  const PictureEntity({
    required this.image,
    required this.thumbnail,
  });

  final String image;
  final String thumbnail;

  @override
  List<Object?> get props => [
        image,
        thumbnail,
      ];
}
