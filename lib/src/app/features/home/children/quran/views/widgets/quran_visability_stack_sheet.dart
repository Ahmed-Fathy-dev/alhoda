import 'package:alhoda/src/app/components/assets_comp/images_comp/image_assets.dart';
import 'package:alhoda/src/app/features/home/children/quran/logic/providers/bookmark_provider.dart';
import 'package:alhoda/src/app/features/home/children/quran/views/pages/quran_page.dart';
import 'package:alhoda/src/core/configs/Routers/routes.dart';
import 'package:alhoda/src/core/constants/enums/assets_enums.dart';
import 'package:alhoda/src/utilities/extensions_methods/app_extensions_m.dart';
import 'package:alhoda/src/utilities/extensions_methods/data_ext.dart';
import 'package:alhoda/src/utilities/extensions_methods/widgets_ex_method.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'dart:math' as math;

import '../../../../../../../core/configs/Routers/route_name.dart';

class QuranTobStackSheet extends StatelessWidget {
  const QuranTobStackSheet(
      {super.key,
      required this.juzzName,
      required this.pageNumber,
      required this.suraName,
      required this.isodd});

  final String? juzzName;
  final int pageNumber;
  final String? suraName;
  final bool isodd;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.black87.withOpacity(.8),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text("$juzzName",
                      style: context.txtTheme.titleMedium
                          ?.copyWith(color: Colors.white)),
                ),
                Expanded(
                  flex: 1,
                  child: Text(pageNumber.toString().toArabic(),
                      style: context.txtTheme.titleMedium
                          ?.copyWith(color: Colors.white)),
                ),
                Expanded(
                  flex: 1,
                  child: Text("سورة" "  $suraName",
                      style: context.txtTheme.titleMedium
                          ?.copyWith(color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
        35.0.sBox(SType.h),
        MidStackQuraanSheet(isodd: isodd)
      ],
    );
  }
}

class MidStackQuraanSheet extends StatelessWidget {
  const MidStackQuraanSheet({super.key, required this.isodd});
  final bool isodd;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black87.withOpacity(.5)),
        height: 140,
        width: 160,
        child: Transform(
          alignment: Alignment.center,
          transform: isodd ? Matrix4.rotationY(0) : Matrix4.rotationY(math.pi),
          child: const Center(
              child: ImageAssetsView(
            imgUrl: AppImages.quranbook,
            opacity: AlwaysStoppedAnimation(.7),
            hight: 120,
            width: 150,
          )),
        ));
  }
}

class QuranBottomSheet extends ConsumerWidget {
  const QuranBottomSheet(
      {required this.onBookmarkTap, required this.index, super.key});
  final void Function()? onBookmarkTap;
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.black87.withOpacity(.8),
      height: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomInkWellWithIcon(
                name: "حفظ علامة",
                onTap: () {
                  ref.read(bookmarkProvider.notifier).setBookmarkStatus(index);
                  
                },
                icon: Icons.bookmark,
              ),
              const Divider(),
              CustomInkWellWithIcon(
                name: "انتقال الي علامة",
                onTap: onBookmarkTap,
                icon: Icons.move_to_inbox_sharp,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomInkWellWithIcon(
                name: "الفهرس",
                onTap: () {
                  context.push(const QuranMainPage(
                    pageIndex: 0,
                  ));
                },
                icon: Icons.list_alt,
              ),
              const Divider(),
              CustomInkWellWithIcon(
                name: "الاجزاء",
                onTap: () {
                  context.push(const QuranMainPage(
                    pageIndex: 2,
                  ));
                },
                icon: Icons.library_books_outlined,
              ),
              const Divider(),
              CustomInkWellWithIcon(
                name: "الصفحات",
                onTap: () {
                  context.push(const QuranMainPage(
                    pageIndex: 1,
                  ));
                },
                icon: Icons.pageview,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomInkWellWithIcon extends StatelessWidget {
  const CustomInkWellWithIcon(
      {super.key, required this.name, required this.onTap, this.icon});
  final String name;
  final void Function()? onTap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          6.0.sBox(SType.w),
          Text(
            name,
            style: context.txtTheme.titleMedium?.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
