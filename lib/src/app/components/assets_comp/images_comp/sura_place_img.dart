import '../../../../core/constants/enums/assets_enums.dart';
import 'image_assets.dart';

class SuraPlaceImgView extends ImageAssetsView {
  const SuraPlaceImgView({
    super.key,
    required AppImages imgUrl,
  }) : super(
          imgUrl: imgUrl,
          hight: 35,
          width: 35,
        );
}
