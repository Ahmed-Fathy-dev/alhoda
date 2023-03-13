import 'package:flutter/material.dart';
import 'package:alhoda/src/utilities/extensions_methods/assets_ext.dart';

import '../../../../core/constants/enums/assets_enums.dart';

class ImageAssetsView extends StatelessWidget {
  const ImageAssetsView({
    super.key,
    required this.imgUrl,
    this.hight,
    this.width,
    this.fit,
    this.color
  });

  final AppImages imgUrl;
  final double? hight;
  final double? width;
  final BoxFit? fit;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imgUrl.fullPathPng,
      height: hight ?? 55,
      width: width ?? 55,
      fit: fit ?? BoxFit.cover,
      color: color,
    );
  }
}
