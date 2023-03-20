import 'package:alhoda/src/app/features/home/children/pray_times/views/widgets/time_widget.dart';
import 'package:alhoda/src/utilities/extensions_methods/app_extensions_m.dart';
import 'package:alhoda/src/utilities/extensions_methods/widgets_ex_method.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import '../../logic/model/pray_time_to_json.dart';
import '../../logic/providers/pray_time_date_provider.dart';

class ScheduleWidget extends ConsumerWidget {
  const ScheduleWidget({super.key,});
 

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final apiData = ref.watch(PrayTimeProvider(PrayerTimeToJson(
      date: DateFormat("DD-MM-YYYY").format(DateTime.now()),
      latitude: 31.190479,
      longitude: 31.523649,
    )));

    return apiData.when(
        data: (data) {
          
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TimeWidget(timeFromData: data.timings!),
                  20.0.sBox(SType.h),
                  CustomRowPreyTime(name: " الفجر", time: data.timings!.fajr!),
                  CustomRowPreyTime(name: "الشروق", time: data.timings!.sunrise! ),
                  CustomRowPreyTime(name: " الظهر", time: data.timings!.dhuhr! ),
                  CustomRowPreyTime(name: " العصر", time: data.timings!.asr!),
                  CustomRowPreyTime(name: "المغرب", time: data.timings!.maghrib!),
                  CustomRowPreyTime(name: "العشاء", time: data.timings!.isha!),
                ],
              ),
            );
          }
          
        ,
        error: (error, stacktrace) {
          return Text("$error");
        },
        loading: () => const Center(child: CircularProgressIndicator()));
    
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
          width: context.mediaQSize.width-150,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.amber.shade50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                name,
                style: context.txtTheme.bodyLarge?.copyWith(fontSize: 30),
              ),
              Text(
                time,
                style: context.txtTheme.bodyLarge?.copyWith(fontSize: 30),
              )
            ],
          ),
        ),20.0.sBox(SType.h)
      ],
    );
  }
}
