import 'package:alhoda/src/app/features/home/children/quran/logic/providers/quran_provider.dart';
import 'package:alhoda/src/utilities/logger_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../components/assets_comp/images_comp/image_network.dart';

class QuranContentPage extends HookConsumerWidget {
  const QuranContentPage({
    super.key,
    // required this.quranParam,
  });
  // final QuranParam quranParam;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // logger.d(quranParam, 'params');
    final quranState = ref.watch(stateQuranNotifier);
    logger.d(quranState.index, ' quranState.index');

    final pageC = usePageController(initialPage: quranState.index!);
    // useEffect(() {
    //   pageC.addListener(() {
    //     pageC.jumpToPage(quranIndex);
    //   });
    //   return;
    // }, [pageC]);
    return Scaffold(
      body: PageView.builder(
        controller: pageC,
        itemBuilder: (BuildContext context, int index) => ImageNetViewPI(
          imgUrl: quranState.data[index].page,
        ),
        itemCount: quranState.data.length,
      ),
    );
  }
}
