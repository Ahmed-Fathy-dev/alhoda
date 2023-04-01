import 'package:alhoda/src/app/features/home/children/quran/logic/providers/bookmark_provider.dart';
import 'package:alhoda/src/app/features/home/children/quran/logic/providers/quran_provider.dart';
import 'package:alhoda/src/app/features/home/children/quran/views/widgets/quran_visability_stack_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../components/assets_comp/images_comp/image_network.dart';

class QuranContentPage extends HookConsumerWidget {
  const QuranContentPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tapStatus = useState<bool>(false);

    final quranState = ref.watch(stateQuranNotifier);

    final bookMarkedPage = ref.watch(bookmarkProvider);

    useMemoized(() {
      SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.immersiveSticky,
        // overlays: [SystemUiOverlay.bottom],
      );
    });

    final pageC = usePageController(initialPage: quranState.index!);
    
    return Scaffold(
      body: PageView.builder(
        controller: pageC,
        itemBuilder: (BuildContext context, int index) => InkWell(
          onTap: () {
            tapStatus.value = !tapStatus.value;
          },
          child: Stack(
            fit: StackFit.expand,
            children: [
              ImageNetViewPI(
                imgUrl: quranState.data[index].page,
              ),
              Visibility(
                  visible: false,
                  child: const Icon(
                    Icons.bookmark,
                    color: Colors.red,
                    size: 30,
                  )),
              Visibility(
                visible: tapStatus.value,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    QuranTobStackSheet(
                      juzzName: quranState.data[index].juzz?.name,
                      pageNumber: index + 1,
                      suraName: quranState.data[index].sura?.name,
                      isodd: (index + 1).isOdd,
                    ),
                    QuranBottomSheet(
                        index: index,
                        onBookmarkTap: bookMarkedPage == null
                            ? null
                            : () {
                                final newPage = ref.refresh(bookmarkProvider);
                                pageC.animateToPage(newPage!,
                                    duration: const Duration(milliseconds: 200),
                                    curve: Curves.bounceIn);
                              })
                  ],
                ),
              )
            ],
          ),
        ),
        itemCount: quranState.data.length,
      ),
    );
  }
}
