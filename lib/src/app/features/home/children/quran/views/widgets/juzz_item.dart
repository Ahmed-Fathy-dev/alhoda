import 'package:alhoda/src/utilities/extensions_methods/app_extensions_m.dart';
import 'package:alhoda/src/utilities/extensions_methods/widgets_ex_method.dart';
import 'package:flutter/material.dart';
import 'package:quran_data/quran_data.dart';
import '../../../../../../../core/constants/enums/widgets_enums.dart';

class JuzzItem extends StatelessWidget {
  const JuzzItem({
    super.key,
    required this.juzzOnTap,
    required this.juzz,
    required this.hezbOnTap,
  });
  final void Function(int) juzzOnTap;
  final JuzzModel juzz;
  final void Function(int) hezbOnTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Column(
            children: [
              InkWell(
                onTap: () {
                  juzzOnTap(juzz.id);
                },
                child: Text("الجزء ${juzz.name}",
                    style: context.txtTheme.headlineSmall),
              ),
              10.0.sBox(SType.h),
              // const Divider(),
              HezbCard(
                hezbOnTab: hezbOnTap,
                hezbName: 'الحزب الاول',
                hezb: juzz.hezbCollection.firstHezb,
              ),
              // 10.0.sBox(SType.h),
              // const Divider(),
              HezbCard(
                hezbOnTab: hezbOnTap,
                hezbName: 'الحزب الثاني',
                hezb: juzz.hezbCollection.secondHezb,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class HezbCard extends StatelessWidget {
  const HezbCard({
    super.key,
    required this.hezbOnTab,
    required this.hezbName,
    required this.hezb,
  });
  final void Function(int) hezbOnTab;
  final String hezbName;
  final HezbModel hezb;

  @override
  Widget build(BuildContext context) {
    return Table(
        border: const TableBorder(
            top: BorderSide(color: Colors.black45),
            bottom: BorderSide(color: Colors.black45),
            verticalInside: BorderSide(color: Colors.black45)),
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TableRow(
            children: [
              CustomInkWellForTable(
                  name: hezbName,
                  style: context.txtTheme.titleMedium,
                  onTap: () {
                    hezbOnTab(hezb.page);
                  }),
              
              CustomInkWellForTable(
                  name:'ربع الحزب',
                  onTap: () {
                    hezbOnTab(hezb.part.quarterHezb.page);
                  }),
               CustomInkWellForTable(
                  name: 'نصف الحزب',
                  onTap: () {
                    hezbOnTab(hezb.part.halfHezb.page);
                  }),
             
              CustomInkWellForTable(
                  name: "اخر الحزب",
                  onTap: () {
                    hezbOnTab(hezb.part.threeQuartersHezb.page);
                  })
            ],
          )
        ]);
  }
}

class CustomInkWellForTable extends StatelessWidget {
  const CustomInkWellForTable({
    super.key,
    required this.name,
    required this.onTap,
    this.icon,
    this.style,
  });
  final String name;
  final void Function()? onTap;
  final IconData? icon;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(name, style: style ?? context.txtTheme.titleSmall),
        ),
      ),
    );
  }
}
