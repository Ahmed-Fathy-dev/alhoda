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
                visible: tapStatus.value,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    QuranTobStackSheet(
                      juzzName: quranState.data[index].juzz?.name,
                      pageNumber: index+1,
                      suraName: quranState.data[index].sura?.name,
                    ),
                    
                    
                    const QuranBottomSheet()
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

// void displayBottomSheet(BuildContext context) {
//   showModalBottomSheet(
//     barrierColor: Colors.transparent,
//     backgroundColor: Colors.black87.withOpacity(.7),
//     context: context,
//     builder: (_) {
//       return const QuranBottomSheet();
//     },
//   );
  
// }
