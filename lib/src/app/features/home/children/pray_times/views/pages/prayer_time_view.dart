
import 'package:alhoda/src/utilities/extensions_methods/widgets_ex_method.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/constants/enums/assets_enums.dart';
import '../../../../views/components/header_section.dart';
import '../widgets/schedule_widget.dart';


class PrayerTimeView  extends StatelessWidget {
  
  const PrayerTimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BgImageView(
            hight: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
            image: AppImages.prayerTime),
        Column(
          children: [
            120.0.sBox(SType.h),
            const ScheduleWidget(),
          ],
        ),
      ],
    );
  }
}




// class AfterPrayTimeLayout extends ConsumerStatefulWidget {
//   const AfterPrayTimeLayout({super.key});

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _AfterPrayTimeState();
// }

// class _AfterPrayTimeState extends ConsumerState<AfterPrayTimeLayout>
//     with AfterLayoutMixin {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }

//   @override
//   FutureOr<void> afterFirstLayout(BuildContext context) {
//     final location = ref.watch(locationProvider);
//   }
// }
