import 'package:alhoda/src/utilities/extensions_methods/app_extensions_m.dart';
import 'package:alhoda/src/utilities/extensions_methods/assets_ext.dart';
import 'package:flutter/material.dart';

import '../assets_comp/images_comp/ayat_separator_img.dart';

class AyaSeparatorImage extends StatelessWidget {
  const AyaSeparatorImage({
    super.key,
    required this.number,
  });
  final String number;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const AyaSeparatorImgView(),
        Positioned(
          right: number.offsetCalculate(),
          top: 5,
          child: Text(
            number,
            style: context.txtTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        )
      ],
    );
  }
}
