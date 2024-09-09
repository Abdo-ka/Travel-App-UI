import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/app.dart';
import 'package:travel_app/config/theme/color_scheme.dart';
import 'package:travel_app/gen/assets.gen.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        4,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage(Assets.icons.dubai.path),
                      ),
                      7.horizontalSpace,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText.bodySmall(
                            'Courtney346',
                            fontWeight: FontWeight.bold,
                          ),
                          AppText.labelSmall(
                            'Suggested for you',
                            color: context.colorScheme.gray,
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      AppButton.field(
                        title: 'Follow',
                        textStyle: context.textTheme.bodySmall?.copyWith(
                          color: context.colorScheme.onPrimary,
                        ),
                      ),
                      5.horizontalSpace,
                      AppImage.asset(Assets.icons.option)
                    ],
                  )
                ],
              ),
              10.verticalSpace,
              AppText.bodySmall(
                'Travel Can Be Done By Foot,Bicycle,Automobile,Train Boat,Bus,Airplane,Ship Or OtherMeans,With OrWithout Luggage,',
                color: context.colorScheme.gray,
              ),
              10.verticalSpace,
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: AppImage.asset(
                  Assets.icons.beach.path,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
