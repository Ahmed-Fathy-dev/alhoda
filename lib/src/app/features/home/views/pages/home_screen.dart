import 'package:alhoda/src/app/components/animation/lottie_animation.dart';
import 'package:alhoda/src/app/components/widgets/loading.dart';
import 'package:alhoda/src/app/features/home/children/pray_times/logic/providers/getting_location_provider.dart';
import 'package:alhoda/src/app/features/home/children/pray_times/views/pages/prayer_time_view.dart';
import 'package:alhoda/src/app/features/home/children/quran/logic/providers/bookmark_provider.dart';
import 'package:alhoda/src/core/configs/Routers/routes.dart';
import 'package:alhoda/src/core/constants/enums/response_status.dart';
import 'package:alhoda/src/core/constants/enums/widgets_enums.dart';
import 'package:alhoda/src/core/services/storage/hive_storage_keys.dart';
import 'package:alhoda/src/core/services/storage/storage_service_provider.dart';
import 'package:alhoda/src/utilities/extensions_methods/widgets_ex_method.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
          image: AppImages.bgGreen,
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
              catName: HomeStr.quraanString,
              imgUrl: AppImages.quraanCat,
              onTap: () {
                context.pushName(RouteName.quraanMainPage);
              },
            ),
            CategoryItem(
                catName: HomeStr.hadethString,
                imgUrl: AppImages.hadethCat,
                onTap: () {}),
            Consumer(
              builder: (_, ref, __) {
                ref.listen(locationProvider, (previous, next) {
                  if (next.status == ResponseStatus.loading) {
                    showDialog(
                        context: context,
                        builder: (_) {
                          return const LoadingWidget();
                        });
                  }
                  if (next.status == ResponseStatus.success) {
                    context.pop();
                  }
                });
                return CategoryItem(
                    catName: HomeStr.prayDatesString,
                    imgUrl: AppImages.prayTimesCat,
                    onTap: () {
                      // context.push(
                      //   const PrayerTimeView());
                      ref
                          .read(locationProvider.notifier)
                          .setPositionState(context);
                    });
              },
            ),
            CategoryItem(
                catName: HomeStr.zekrString,
                imgUrl: AppImages.azkarCat,
                onTap: () {}),
            CategoryItem(
                catName: HomeStr.qeblaString,
                imgUrl: AppImages.qeblaCat,
                onTap: () {}),
            Consumer(builder: (_, ref, __) {
              return CategoryItem(
                  catName: HomeStr.settingString,
                  imgUrl: AppImages.settingsCat,
                  onTap: () {
                    final box = ref.watch(storageServiceProvider);
                    box.remove(HiveStorageKeys.indexKey);
                  });
            })
          ],
        ),
      ),
    );
  }
}
