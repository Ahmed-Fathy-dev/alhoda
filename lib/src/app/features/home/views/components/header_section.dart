import 'package:flutter/material.dart';

import '../../../../../core/constants/enums/assets_enums.dart';
import '../../../../components/assets_comp/images_comp/image_assets.dart';
import '../../../../components/assets_comp/images_comp/logo_img.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox.fromSize(),
        Container(
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * .14,
          ),
          child: LogoImageView(
            hight: MediaQuery.of(context).size.height * .2,
          ),
        ),
        SizedBox.fromSize(),
      ],
    );
  }
}

// HeaderSectionImageView(
//   hight: MediaQuery.of(context).size.height * .25,
// ),
class HeaderSectionImageView extends ImageAssetsView {
  const HeaderSectionImageView({
    super.key,
    required double hight,
  }) : super(
          imgUrl: AppImages.header,
          hight: hight,
        );
}

class BgImageView extends ImageAssetsView {
  const BgImageView({
    super.key,
    required double hight,
    required double width,
    required BoxFit fit,
    required AppImages image, 
  }) : super(
          imgUrl: image,
          hight: hight,
          width: width,
          fit: fit,
        );
}
