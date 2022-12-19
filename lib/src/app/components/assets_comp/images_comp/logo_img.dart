import '../../../../core/constants/enums/assets_enums.dart';
import 'image_assets.dart';

class LogoImageView extends ImageAssetsView {
  const LogoImageView({super.key, required double hight})
      : super(
          imgUrl: AppImages.logo,
          hight: hight,
          width: 75,
        );
}
