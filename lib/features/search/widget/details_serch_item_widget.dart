import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/app.dart';
import 'package:travel_app/config/theme/app_colors.dart';
import 'package:travel_app/config/theme/color_scheme.dart';
import 'package:travel_app/gen/assets.gen.dart';

class DetailsSerchItemWidget extends StatelessWidget {
  const DetailsSerchItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: context.colorScheme.primary.lighten(.33),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText.bodySmall(
                  'Firgah Lab Agency',
                  fontWeight: FontWeight.bold,
                ),
                AppText.bodySmall('Verified'),
              ],
            ),
            Row(
              children: [
                AppImage.asset(
                  Assets.icons.location,
                  size: 12,
                ),
                3.horizontalSpace,
                AppText.labelSmall('Chattogram,Bangladesh')
              ],
            ),
            5.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: List.generate(
                    5,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 3),
                      child: AppImage.asset(
                        Assets.icons.star,
                        size: 13,
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                ),
                AppText.labelSmall('24')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
