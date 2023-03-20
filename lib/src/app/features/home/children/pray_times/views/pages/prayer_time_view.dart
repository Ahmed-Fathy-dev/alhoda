
import 'package:flutter/material.dart';

import '../widgets/pray_time_stack.dart';

class PrayerTimeView extends StatelessWidget {
  const PrayerTimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PrayTimeStack(),
    );
  }
}



