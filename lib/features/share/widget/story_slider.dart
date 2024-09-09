import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/app.dart';
import 'package:travel_app/config/theme/app_colors.dart';
import 'package:travel_app/gen/assets.gen.dart';

class StorySliderWidget extends StatelessWidget {
  const StorySliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          5,
          (index) => index == 0
              ? Container(
                  width: 80.w,
                  height: 130.h,
                  decoration: BoxDecoration(
                    color: context.colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Container(
                      width: 32.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                          color: context.colorScheme.primary,
                          borderRadius: BorderRadius.circular(26)),
                      child: Icon(
                        Icons.add,
                        color: context.colorScheme.onPrimary,
                      ),
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Container(
                        width: 80.w,
                        height: 130.h,
                        decoration: BoxDecoration(
                            color: context.colorScheme.primary,
                            borderRadius: BorderRadius.circular(26)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: AppImage.asset(
                            Assets.icons.beach.path,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      AppText('Beach')
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
