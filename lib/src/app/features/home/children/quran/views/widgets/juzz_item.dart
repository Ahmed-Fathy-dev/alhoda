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
    required this.firstHezbName,
    required this.secHezbName,
  });
  final void Function(int) juzzOnTap;
  final JuzzModel juzz;
  final void Function(int) hezbOnTap;
  final String firstHezbName;
  final String secHezbName;

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
                  juzzOnTap(juzz.hezbCollection.firstHezb.page);
                },
                child: Text("الجزء ${juzz.name}",
                    style: context.txtTheme.headlineSmall),
              ),
              10.0.sBox(SType.h),
              // const Divider(),
              HezbCard(
                hezbOnTab: hezbOnTap,
                hezbName: firstHezbName,
                hezb: juzz.hezbCollection.firstHezb,
              ),
              // 10.0.sBox(SType.h),
              // const Divider(),
              HezbCard(
                hezbOnTab: hezbOnTap,
                hezbName: secHezbName,
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
      columnWidths: const {
        0:FlexColumnWidth(1.8),
        1: FlexColumnWidth(1),
        2: FlexColumnWidth(1),
        3:FlexColumnWidth(1)
      },
        border: const TableBorder(
            top: BorderSide(color: Colors.black45),
            bottom: BorderSide(color: Colors.black45),
            verticalInside: BorderSide(color: Colors.black45)),
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TableRow(
            children: [
              InkWell(
                onTap: () {
                    hezbOnTab(hezb.page);
                  }
                ,
                child:  Padding(
                padding: const EdgeInsets.only(top: 16.0,),
                child: Center(
                   child: Text(hezbName, style:context.txtTheme.titleMedium),
                ),
                  // twoText: false,
                  // name: hezbName,
                  // style: context.txtTheme.titleMedium,
                  )),
              CustomInkWellForTable(
                  name: 'ربع',
                  onTap: () {
                    hezbOnTab(hezb.part.quarterHezb.page);
                  }),
              CustomInkWellForTable(
                  name: 'نصف',
                  onTap: () {
                    hezbOnTab(hezb.part.halfHezb.page);
                  }),
              CustomInkWellForTable(
                  name: "ثلاثة أرباع",
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
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: Center(
          child: Column(
            children: [
              Text(name, style: style ?? context.txtTheme.bodySmall),

            
                Text("الحزب", style: style ?? context.txtTheme.titleSmall)
              
              
            ],
          ),
        ),
      ),
    );
  }
}
