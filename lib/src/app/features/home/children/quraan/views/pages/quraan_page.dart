import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../../../core/constants/Strings/home_strings.dart';
import '../widgets/tabs_widget.dart';
import 'tab_bar_view.dart';

class QuraanMainPage extends HookWidget {
  const QuraanMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabC = useTabController(initialLength: 3);
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          HomeStr.quraanString,
        ),
        bottom: TabsWidget(
          context: context,
          tabC: tabC,
        ),
      ),
      body: _QuraanMainBody(tabC),
    );
  }
}

class _QuraanMainBody extends StatelessWidget {
  const _QuraanMainBody(this.controller);
  final TabController controller;
  @override
  Widget build(BuildContext context) {
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
