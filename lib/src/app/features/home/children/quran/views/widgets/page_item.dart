import 'package:alhoda/src/utilities/extensions_methods/app_extensions_m.dart';
import 'package:alhoda/src/utilities/extensions_methods/assets_ext.dart';
import 'package:flutter/material.dart';
import 'package:quran_data/quran_data.dart';

import '../../../../../../../utilities/extensions_methods/widgets_ex_method.dart';
import '../../../../../../components/assets_comp/images_comp/sura_place_img.dart';
import '../../../../../../components/widgets/aya_separator_widget.dart';

class PageItem extends StatelessWidget {
  const PageItem({
    super.key,
    required this.page,
    required this.onTap,
  });

  final void Function() onTap;
  final PageModel page;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  page.name,
                  style: context.txtTheme.titleMedium?.copyWith(
                    fontSize: 25,
                  ),
                ),
                const Spacer(),
                SuraPlaceImgView(
                  imgUrl: page.place.getSuraPlace(),
                ),
                16.0.sBox(SType.w),
                AyaSeparatorImage(
                  number: '${page.index}',
                )
              ],
            ),
          ),
        ),
        const Divider()
      ],
    );
  }
}
