import 'package:alhoda/src/utilities/extensions_methods/widgets_ex_method.dart';
import 'package:flutter/material.dart';
import 'package:quran_data/quran_data.dart';
import '../../../../../../../core/constants/enums/widgets_enums.dart';

class JuzzItem extends StatelessWidget {
  const JuzzItem({
    super.key,
    required this.juzzOnTap,
    required this.juzz,
  });
  final void Function() juzzOnTap;
  final String juzz;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            InkWell(
              onTap: juzzOnTap,
              child: Text(juzz, style: const TextStyle(fontSize: 25)),
              
            ),
            10.0.sBox(SType.h),
            HezbCard(hezbOnTab: juzzOnTap, juzzName: 'الحزب الاول',),
            10.0.sBox(SType.h),
            HezbCard(hezbOnTab: juzzOnTap,juzzName: 'الحزب الثاني')
          ],
        ),
        const Divider(),
      ],
    );
  }
}

class HezbCard extends StatelessWidget {
  const HezbCard({
    super.key,
    required this.hezbOnTab, required this.juzzName,
  });
  final void Function() hezbOnTab;
  final String juzzName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: hezbOnTab,
          child:  Text(
            juzzName,
            style:const TextStyle(fontSize: 20),
          ),
        ),
        InkWell(
          onTap: hezbOnTab,
          child: const Text("ربع الحزب", style: TextStyle(fontSize: 18)),
        ),
        InkWell(
          onTap: hezbOnTab,
          child: const Text("نصف الحزب ", style: TextStyle(fontSize: 18)),
        ),
        InkWell(
          onTap: hezbOnTab,
          child: const Text("اخر الحزب", style: TextStyle(fontSize: 18)),
        ),
      ],
    );
  }
}
