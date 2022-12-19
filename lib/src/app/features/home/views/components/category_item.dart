import 'package:alhoda/src/utilities/extensions_methods/app_extensions_m.dart';
import 'package:alhoda/src/utilities/extensions_methods/widgets_ex_method.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/enums/assets_enums.dart';
import '../../../../../core/constants/enums/widgets_enums.dart';
import '../../../../components/assets_comp/images_comp/image_assets.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.imgUrl,
    required this.catName,
    required this.onTap,
  });
  final AppImages imgUrl;
  final String catName;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          _CategoryImgItem(imgUrl),
          4.0.sBox(SType.h),
          Text(
            catName,
            style: context.txtTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}

class _CategoryImgItem extends StatelessWidget {
  const _CategoryImgItem(this.imgUrl);
  final AppImages imgUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 75,
      padding: const EdgeInsets.all(8),
      child: _MainCategoryImageView(imgUrl),
    );
  }
}

class _MainCategoryImageView extends ImageAssetsView {
  const _MainCategoryImageView(AppImages imgUrl)
      : super(
          imgUrl: imgUrl,
        );
}
