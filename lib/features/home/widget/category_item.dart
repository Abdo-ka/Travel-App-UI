import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:travel_app/config/theme/app_colors.dart';
import 'package:travel_app/features/home/widget/slider_image.dart';
import 'package:travel_app/gen/assets.gen.dart';

class CategoryItemWidget extends StatefulWidget {
  const CategoryItemWidget({super.key});

  @override
  State<CategoryItemWidget> createState() => _CategoryItemWidgetState();
}

class _CategoryItemWidgetState extends State<CategoryItemWidget> {
  final ValueNotifier<int> isSelected = ValueNotifier(6);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: ValueListenableBuilder(
        valueListenable: isSelected,
        builder: (BuildContext context, value, Widget? child) => Row(
          children: List.generate(
            5,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9),
              child: GestureDetector(
                onTap: () {
                  isSelected.value == index
                      ? isSelected.value = 6
                      : isSelected.value = index;
                },
                child: Container(
                  width: 66.w,
                  height: 97.h,
                  decoration: BoxDecoration(
                    color: isSelected.value == index
                        ? context.colorScheme.primary
                        : context.colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppImage.asset(
                        Assets.icons.partnerTravel,
                        color: isSelected.value == index
                            ? context.colorScheme.onPrimary
                            : context.colorScheme.shadow,
                      ),
                      10.verticalSpace,
                      AppText.labelSmall(
                        'Holidays',
                        color: isSelected.value == index
                            ? context.colorScheme.onPrimary
                            : context.colorScheme.shadow,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
