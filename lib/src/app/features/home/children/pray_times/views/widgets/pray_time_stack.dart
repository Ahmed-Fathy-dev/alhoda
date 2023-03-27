import 'package:alhoda/src/app/features/home/views/components/header_section.dart';
import 'package:alhoda/src/core/constants/enums/assets_enums.dart';
import 'package:alhoda/src/utilities/extensions_methods/widgets_ex_method.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'schedule_widget.dart';

class PrayTimeStack extends StatelessWidget {
const PrayTimeStack({
    
    super.key, 
  });

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
