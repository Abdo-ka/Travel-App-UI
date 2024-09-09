import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/app.dart';
import 'package:travel_app/gen/assets.gen.dart';

class TrendingCountryWidget extends StatelessWidget {
  const TrendingCountryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: context.width,
          height: 200.h,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: AppImage.asset(
              Assets.icons.dubai.path,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          top: 15,
          left: 10,
          child: Row(
            children: [
              AppImage.asset(
                Assets.icons.location,
                color: context.colorScheme.onPrimary,
              ),
              5.horizontalSpace,
              AppText(
                'Dubai',
                color: context.colorScheme.onPrimary,
              ),
            ],
          ),
        ),
        Positioned(
          top: 15,
          right: 10,
          child: AppImage.asset(Assets.icons.favourite),
        ),
      ],
    );
  }
}
