import 'package:alhoda/src/app/components/custom_list_view.dart';
import 'package:alhoda/src/app/features/home/children/quran/views/pages/quran_content_page.dart';
import 'package:alhoda/src/app/features/home/children/quran/views/widgets/archive_item.dart';
import 'package:alhoda/src/app/features/home/children/quran/views/widgets/juzz_item.dart';
import 'package:alhoda/src/core/configs/Routers/routes.dart';
import 'package:alhoda/src/utilities/extensions_methods/app_extensions_m.dart';
import 'package:alhoda/src/utilities/logger_util.dart';
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
                  suraId: suraList[i].id,
                ),
              );
          context.push(
            const QuranContentPage(),
          );
        },
        sura: suraList[i],
      ),
      data: suraList,
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
                  index: pagesList[i].index,
                ),
              );
          context.push(
            const QuranContentPage(),
          );
        },
        page: pagesList[i],
      ),
      data: pagesList,
    );
  }
}

class JuzzView extends ConsumerWidget {
  const JuzzView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomListView(
      getWidget: (i) => JuzzItem(

        hezbOnTap: (int hezbPage) {
          "$hezbPage".logWtf("from Ui  : hezp page");
          ref.read(stateQuranNotifier.notifier).getIndexFromParam(
                QuranParam(
                  page: hezbPage,
                ),
              );
          context.push(
            const QuranContentPage(),
          );
        },
        juzz: juzzList[i],
        juzzOnTap: (int juzzPage) {
          "$juzzPage".logWtf("from Ui  : juzz  Page");
          ref.read(stateQuranNotifier.notifier).getIndexFromParam(
                QuranParam(
                  page: juzzPage ,
                ),
              );
          context.push(
            const QuranContentPage(),
          );
        }, 
        firstHezbName:juzzList[i].hezbCollection.firstHezb.name,
        secHezbName: juzzList[i].hezbCollection.secondHezb.name,

      ),
      data: juzzList,
    );
  }
}
