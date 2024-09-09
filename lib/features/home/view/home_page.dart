import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/config/theme/color_scheme.dart';
import 'package:travel_app/features/home/widget/category_item.dart';
import 'package:travel_app/features/home/widget/slider_image.dart';
import 'package:travel_app/features/home/widget/trending_country.dart';
import 'package:travel_app/gen/assets.gen.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          20.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  AppImage.asset(
                    Assets.icons.location,
                  ),
                  5.horizontalSpace,
                  AppText('Hyderabad, India'),
                  5.horizontalSpace,
                  AppImage.asset(Assets.icons.arrowDown)
                ],
              ),
              Row(
                children: [
                  AppImage.asset(Assets.icons.notification),
                  10.horizontalSpace,
                  AppImage.asset(
                    Assets.icons.send,
                    color: context.colorScheme.shadow,
                  )
                ],
              )
            ],
          ),
          15.verticalSpace,
          const SliderImageWidget(),
          15.verticalSpace,
          AppText(
            'Categories',
            style: context.textTheme.headlineMedium,
          ),
          10.verticalSpace,
          const CategoryItemWidget(),
          10.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText('What Destination do you \nlike to go to?'),
              ButtonWidget(
                width: 70.w,
                height: 40.h,
                backgroundColor: context.colorScheme.primary,
                foregroundColor: context.colorScheme.onPrimary,
                onPressed: () {},
                text: 'see More',
                textStyle: context.textTheme.labelSmall?.copyWith(
                  color: context.colorScheme.primaryText,
                ),
              )
            ],
          ),
          const TrendingCountryWidget(),
        ],
      ),
    );
  }
}
