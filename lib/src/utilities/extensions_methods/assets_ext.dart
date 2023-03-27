import '../../core/constants/enums/assets_enums.dart';
import '../../core/constants/enums/lottie_enum.dart';

extension GetFullPath on AppImages {
  String get fullPathPng => 'assets/images/$name.png';
  String get fullPathjpg => 'assets/images/$name.jpg';
}

extension ParseFromString on String {
  double offsetCalculate() {
    final txt = this;
    if (txt.length == 1) {
      return 14;
    } else if (txt.length == 2) {
      return 9;
    } else if (txt.length == 3) {
      return 4.5;
    }
    return 0;
  }
}

extension ParseFromInt on int {
  AppImages getSuraPlace() {
    final placeParse = this;
    if (placeParse == 0) {
      return AppImages.mecca;
    } else {
      return AppImages.madina;
    }
  }
}
extension GetLottieFullPath on LottieAnimation {
  String get fullpath => "assets/animations/$name.json";
}
