import 'package:alhoda/src/app/features/home/children/pray_times/logic/providers/getting_location_provider.dart';
import 'package:alhoda/src/app/components/widgets/async_widget.dart';
import 'package:alhoda/src/app/features/home/children/pray_times/views/widgets/time_widget.dart';
import 'package:alhoda/src/utilities/extensions_methods/app_extensions_m.dart';
import 'package:alhoda/src/utilities/extensions_methods/widgets_ex_method.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../logic/model/pray_time_model.dart';
import '../../logic/model/pray_time_to_json.dart';
import '../../logic/providers/pray_time_date_provider.dart';

// 
class ScheduleWidget extends ConsumerWidget {
  const ScheduleWidget({  
    super.key,
  });


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final location = ref.watch(locationProvider.select((value) => value.position));
  
    final prayData = ref.watch(prayTimeProvider(PrayerTimeToJson(
        date: DateFormat("DD-MM-YYYY").format(DateTime.now()),
        latitude: location!.latitude,
        longitude: location.longitude)));

    return AsyncValueHandler(
        asyncValue: prayData,
        dataWidget: (data) {
          return SchedulePrayTime(
            data: data,
          );
        });
  }
}

class SchedulePrayTime extends StatelessWidget {
  const SchedulePrayTime({
    super.key,
    required this.data,
  });
  final PrayerTimeModel data;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TimeWidget(praytime: data.timings!)
          // .add(
          //     const Duration(hours: 2, minutes: 52)
          ,
          20.0.sBox(SType.h),
          CustomRowPreyTime(name: " الفجر", time: data.timings!.fajr!),
          CustomRowPreyTime(name: "الشروق", time: data.timings!.sunrise!),
          CustomRowPreyTime(name: " الظهر", time: data.timings!.dhuhr!),
          CustomRowPreyTime(name: " العصر", time: data.timings!.asr!),
          CustomRowPreyTime(name: "المغرب", time: data.timings!.maghrib!),
          CustomRowPreyTime(name: "العشاء", time: data.timings!.isha!),
        ],
      ),
    );
  }
}

class CustomRowPreyTime extends StatelessWidget {
  const CustomRowPreyTime({super.key, required this.name, required this.time});
  final String name;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: context.mediaQSize.width - 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xff005d93)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                name,
                style: context.txtTheme.bodyLarge
                    ?.copyWith(fontSize: 30, color: Colors.white),
              ),
              Text(
                time,
                style: context.txtTheme.bodyLarge
                    ?.copyWith(fontSize: 30, color: Colors.white),
              )
            ],
          ),
        ),
        20.0.sBox(SType.h)
      ],
    );
  }
}
