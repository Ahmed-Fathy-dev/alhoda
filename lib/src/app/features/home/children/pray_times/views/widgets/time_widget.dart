import 'dart:async';

import 'package:alhoda/src/app/features/home/children/pray_times/logic/model/pray_time_model.dart';
import 'package:alhoda/src/app/features/home/children/pray_times/logic/providers/clock_provider.dart';
import 'package:alhoda/src/utilities/extensions_methods/app_extensions_m.dart';
import 'package:alhoda/src/utilities/extensions_methods/data_ext.dart';
import 'package:alhoda/src/utilities/logger_util.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TimeWidget extends ConsumerWidget {
  const TimeWidget({required this.timeFromData, super.key});
  final Timings timeFromData;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Timer.periodic(const Duration(seconds: 30), (timer) {
      final clock = ref.read(clockProvider);
      clock.updateTime(DateTime.now());
    });

    final clock = ref.watch(clockProvider);
    final textClock = timeFromData.whatIsNextPray(clock.currentTime);
    logger.wtf(textClock.remainingTime!.inMinutes);
    final percent =
        textClock.remainingTime!.inMinutes / textClock.totalduration!.inMinutes;
    logger.wtf(percent,"percent");
    return Center(
      child: SizedBox(
        width: 200.0,
        height: 200.0,
        child: Center(
          child: CircularPercentIndicator(
            radius: 90,
            percent:
                percent,
            lineWidth: 15,
            center: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("باقي علي ${textClock.nextPrayName}",
                    style: context.txtTheme.bodyMedium?.copyWith(fontSize: 25)),
                Text(textClock.remainingTime!.durationInHhMm(),
                    style: context.txtTheme.bodyLarge?.copyWith(fontSize: 30)),
              ],
            ),
            backgroundColor: Colors.blue.shade300,
            progressColor: Colors.blue.shade50,
            reverse: true,
            
          ),
        ),
      ),
    );
  }
}
