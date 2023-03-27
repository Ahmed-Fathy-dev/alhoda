
import 'package:flutter/material.dart';

import '../widgets/pray_time_stack.dart';

class PrayerTimeView  extends StatelessWidget {
  
  const PrayerTimeView({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(
      
         body:   PrayTimeStack()
         
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
