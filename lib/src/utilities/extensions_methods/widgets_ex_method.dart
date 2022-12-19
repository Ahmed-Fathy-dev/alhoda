import 'package:flutter/widgets.dart';

import '../../core/constants/enums/widgets_enums.dart';

extension CustomSizedBox on double {
  Widget sBox(SType type) {
    double? h;
    double? w;

    switch (type) {
      case SType.h:
        h = this;
        break;
      case SType.w:
        w = this;
        break;
    }
    return SizedBox(
      height: h,
      width: w,
    );
  }
}
