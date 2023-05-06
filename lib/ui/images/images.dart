import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

enum Images {
  background('wicked_background.svg'),
  noData('no_data.svg');

  const Images(this.fileName);

  final String fileName;

  Widget image({
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
  }) {
    return SvgPicture.asset(
      'assets/images/$fileName',
      width: width,
      height: height,
      fit: fit,
    );
  }
}
