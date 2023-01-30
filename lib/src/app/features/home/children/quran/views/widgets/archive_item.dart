import 'package:alhoda/src/utilities/extensions_methods/app_extensions_m.dart';
import 'package:alhoda/src/utilities/extensions_methods/data_ext.dart';
import 'package:alhoda/src/utilities/extensions_methods/widgets_ex_method.dart';
import 'package:flutter/material.dart';
import 'package:quran_data/quran_data.dart';

import '../../../../../../../core/constants/Strings/quraan_strings.dart';
import '../../../../../../components/widgets/aya_separator_widget.dart';

class ArchiveItem extends StatelessWidget {
  const ArchiveItem({
    super.key,
    required this.onTap,
    required this.sura,
  });
  final void Function() onTap;
  final SuraModel sura;

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
                  sura.name,
                  style: context.txtTheme.titleMedium?.copyWith(
                    fontSize: 25,
                  ),
                ),
                const Spacer(),
                Column(
                  children: [
                    Text(
                      QuraanStr.ayatString,
                      style: context.txtTheme.bodySmall,
                    ),
                    Text('${sura.ayat}'),
                  ],
                ),
                16.0.sBox(SType.w),
                Text(sura.place.suraPlace()),
                16.0.sBox(SType.w),
                AyaSeparatorImage(
                  number: '${sura.indexModel.from}',
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
