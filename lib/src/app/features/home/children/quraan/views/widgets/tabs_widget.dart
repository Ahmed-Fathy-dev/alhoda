import 'package:alhoda/src/utilities/extensions_methods/app_extensions_m.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/constants/Strings/quraan_strings.dart';

class TabsWidget extends TabBar {
  TabsWidget({
    super.key,
    required BuildContext context,
    required TabController tabC,
  }) : super(
          indicatorColor: context.colorSchemes.secondary,
          controller: tabC,
          tabs: const [
            Tab(
              text: QuraanStr.archiveString,
            ),
            Tab(
              text: QuraanStr.indexString,
            ),
            Tab(
              text: QuraanStr.juzzString,
            ),
          ],
        );
}
