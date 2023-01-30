import 'package:alhoda/src/app/components/custom_list_view.dart';
import 'package:alhoda/src/app/features/home/children/quran/views/pages/quran_content_page.dart';
import 'package:alhoda/src/app/features/home/children/quran/views/widgets/archive_item.dart';
import 'package:alhoda/src/core/configs/Routers/routes.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quran_data/quran_data.dart';

import '../../logic/model/quran_param_model.dart';
import '../../logic/providers/quran_provider.dart';
import '../widgets/page_item.dart';

class ArchiveView extends ConsumerWidget {
  const ArchiveView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomListView(
      getWidget: (i) => ArchiveItem(
        onTap: () {
          ref.read(stateQuranNotifier.notifier).getIndexFromParam(
                QuranParam(
                  suraId: sura[i].id,
                  // filter: 'sura',
                ),
              );
          context.push(
            const QuranContentPage(),
          );
        },
        sura: sura[i],
      ),
      data: sura,
    );
  }
}

class IndexView extends ConsumerWidget {
  const IndexView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomListView(
      getWidget: (i) => PageItem(
        onTap: () {
          ref.read(stateQuranNotifier.notifier).getIndexFromParam(
                QuranParam(
                  index: pages[i].index,
                  // filter: 'sura',
                ),
              );
          context.push(
            const QuranContentPage(),
          );
        },
        page: pages[i],
      ),
      data: sura,
    );
  }
}

class JuzzView extends StatelessWidget {
  const JuzzView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
