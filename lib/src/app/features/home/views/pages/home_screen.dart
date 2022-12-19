import 'package:alhoda/src/core/configs/Routers/routes.dart';
import 'package:alhoda/src/core/constants/enums/widgets_enums.dart';
import 'package:alhoda/src/utilities/extensions_methods/widgets_ex_method.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../../../../core/configs/Routers/route_name.dart';
import '../../../../../core/constants/Strings/home_strings.dart';
import '../../../../../core/constants/enums/assets_enums.dart';
import '../components/category_item.dart';
import '../components/header_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //     // title: Text('title'),
      //     ),
      body: _HomeContentBody(),
    );
  }
}

class _HomeContentBody extends StatelessWidget {
  const _HomeContentBody();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BgImageView(
          hight: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        ),
        Column(
          children: [
            const HeaderSection(),
            16.0.sBox(SType.h),
            const _CategoriesSection(),
          ],
        ),
      ],
    );
  }
}

class _CategoriesSection extends StatelessWidget {
  const _CategoriesSection();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SlideInUp(
        child: GridView.count(
          // mainAxisSpacing: .1,
          // crossAxisSpacing: 3 / 4,
          childAspectRatio: 1.6,
          crossAxisCount: 2,
          children: [
            CategoryItem(
              catName: HomeStrings.quraanString,
              imgUrl: AppImages.quraanCat,
              onTap: () {
                context.pushName(RouteName.quraanMainPage);
              },
            ),
            CategoryItem(
                catName: HomeStrings.hadethString,
                imgUrl: AppImages.hadethCat,
                onTap: () {}),
            CategoryItem(
                catName: HomeStrings.prayDatesString,
                imgUrl: AppImages.prayTimesCat,
                onTap: () {}),
            CategoryItem(
                catName: HomeStrings.zekrString,
                imgUrl: AppImages.azkarCat,
                onTap: () {}),
            CategoryItem(
                catName: HomeStrings.qeblaString,
                imgUrl: AppImages.qeblaCat,
                onTap: () {}),
            CategoryItem(
                catName: HomeStrings.settingString,
                imgUrl: AppImages.settingsCat,
                onTap: () {})
          ],
        ),
      ),
    );
  }
}

// class _MainCategories extends StatelessWidget {
//   const _MainCategories();

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
