import 'package:alhoda/src/utilities/logger_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../core/constants/Strings/home_strings.dart';
import '../../logic/model/quran_model.dart';
import '../../logic/providers/quran_provider.dart';
import '../widgets/tabs_widget.dart';
import 'tab_bar_view.dart';

class QuranMainPage extends HookConsumerWidget {
  const QuranMainPage({super.key, this.pageIndex=0,});

  final int pageIndex;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quranAsync = ref.watch(quranProvier);
  
    final tabC = useTabController(initialLength: 3,initialIndex: pageIndex );
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          HomeStr.quraanString,
        ),
        bottom: TabsWidget(
          context: context,
          tabC: tabC,
        ),
      ),
      body: quranAsync.when(
        data: (data) {
          logger.d(data, 'data from ui');
          return _QuranMainBody(
            tabC,
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Text('Error: $err'),
      ),
    );
  }
}

class _QuranMainBody extends ConsumerWidget {
  const _QuranMainBody(
    this.controller,
  );
  final TabController controller;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TabBarView(
      controller: controller,
      children: const [
        ArchiveView(),
        IndexView(),
        JuzzView(),
      ],
    );
  }
}
