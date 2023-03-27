import 'package:alhoda/src/utilities/extensions_methods/assets_ext.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../core/constants/enums/lottie_enum.dart';

class LottieAnimationView extends StatelessWidget {
  final LottieAnimation animation;
  final bool repeat;
  final bool reverse;
  const LottieAnimationView(
      {super.key,
      required this.animation,
      this.repeat = true,
      this.reverse = true});

  @override
  Widget build(BuildContext context) => Lottie.asset(
        animation.fullpath,
        reverse: reverse,
        repeat: repeat,
      );
}




class LoadingAnimationView extends LottieAnimationView {
  const LoadingAnimationView({super.key})
      : super(animation: LottieAnimation.loading);
}
