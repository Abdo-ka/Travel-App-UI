import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/app.dart';
import 'package:travel_app/config/theme/app_colors.dart';
import 'package:travel_app/config/theme/color_scheme.dart';
import 'package:travel_app/features/search/widget/details_serch_item_widget.dart';
import 'package:travel_app/gen/assets.gen.dart';

class SerchItemWidget extends StatelessWidget {
  const SerchItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          5,
          (index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: 330.w,
                  height: 443.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: context.colorScheme.onPrimary,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: AppImage.asset(
                            width: context.width,
                            height: 160.h,
                            Assets.icons.dubai.path,
                            fit: BoxFit.fill,
                          ),
                        ),
                        10.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppText(
                              'Manali- 5N/6 Days',
                            ),
                            AppText.titleMedium(
                              '20,000₹',
                              fontWeight: FontWeight.bold,
                            )
                          ],
                        ),
                        6.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                AppText.labelSmall(
                                  'Manal-Kasol-Simla',
                                  color: context.colorScheme.gray,
                                ),
                                4.verticalSpace,
                                Row(
                                  children: List.generate(
                                    4,
                                    (index) => Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: ClipOval(
                                          child: SizedBox.fromSize(
                                            size: Size.fromRadius(3),
                                            child: AppImage.asset(
                                                Assets.icons.home,
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    AppText.labelSmall('Available Seat'),
                                    10.horizontalSpace,
                                    AppText.labelSmall('610')
                                  ],
                                ),
                                8.verticalSpace,
                                Container(
                                  width: 94,
                                  height: 6,
                                  color: context.colorScheme.primary,
                                )
                              ],
                            ),
                          ],
                        ),
                        7.verticalSpace,
                        const DetailsSerchItemWidget(),
                        10.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppButton.field(
                              fixedSize: Size(120.w, 43.h),
                              title: 'View Details',
                              borderRadius: BorderRadius.circular(16),
                            ),
                            ButtonWidget(
                              backgroundColor: Colors.transparent,
                              isOutlined: true,
                              foregroundColor: context.colorScheme.shadow,
                              borderColor: context.colorScheme.shadow,
                              width: 120.w,
                              height: 43.h,
                              onPressed: () {},
                              text: 'Book Now',
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )),
    );
  }
}
