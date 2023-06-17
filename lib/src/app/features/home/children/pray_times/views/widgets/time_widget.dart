import 'dart:async';
import 'package:alhoda/src/app/features/home/children/pray_times/logic/model/pray_count_down.dart';
import 'package:alhoda/src/app/features/home/children/pray_times/logic/model/pray_time_model.dart';
import 'package:alhoda/src/utilities/extensions_methods/app_extensions_m.dart';
import 'package:alhoda/src/utilities/extensions_methods/data_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:percent_indicator/percent_indicator.dart';


// TODO: Pray time animation when remaining time zero 
class TimeWidget extends HookConsumerWidget {
  const TimeWidget({
    super.key,
    required this.praytime,
  });
  final Timings praytime;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prayCountObj = useState(praytime.whatIsNextPray(DateTime.now()));
    final timeLeft = useState(prayCountObj.value.remainingTime!.inSeconds);
    final isTimerRunning = useState(false);
    final percent = prayCountObj.value.remainingTime!.inMinutes /
        prayCountObj.value.totalduration!.inMinutes;
    useMemoized(() => _startTimer(
          context,
          timeLeft: timeLeft,
          isTimerRunning: isTimerRunning,
          time: praytime,
          countObj: prayCountObj,
        ));

    return Center(
      child: SizedBox(
        width: 200.0,
        height: 200.0,
        child: Center(
          child: CircularPercentIndicator(
            radius: 90,
            percent: percent,
            lineWidth: 15,
            center: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("باقي علي ${prayCountObj.value.nextPrayName}",
                    style: context.txtTheme.bodyMedium?.copyWith(fontSize: 22)),
                Text(Duration(seconds: timeLeft.value).durationInHhMm(),
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

void _startTimer(BuildContext ctx,
    {required ValueNotifier<bool> isTimerRunning,
    required ValueNotifier<int> timeLeft,
    required Timings time,
    required ValueNotifier<PrayCountDown> countObj}) {
  isTimerRunning.value = true;
  Timer.periodic(
    const Duration(seconds: 1),
    (timer) {
      if (ctx.mounted) {
        if (timeLeft.value == 0) {
          // Invalidate the previously generated OTP
          // Stop the timer
          isTimerRunning.value = false;
          Future.delayed(const Duration(seconds: 5), () {
            isTimerRunning.value = true;
            countObj.value = time.whatIsNextPray(DateTime.now());
            timeLeft.value =
                time.whatIsNextPray(DateTime.now()).remainingTime!.inSeconds;
          });
          // timer.cancel();
          if (ctx.mounted) {
            // 'expire_otp_tr'.tr().showToast(success: false);
          }
          // Display an error message to the user
        } else {
          timeLeft.value--;
        }
      } else {
        timer.cancel();
      }
    },
  );
}
