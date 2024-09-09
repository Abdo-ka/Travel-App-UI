import 'package:carousel_slider/carousel_slider.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/app.dart';
import 'package:travel_app/config/theme/color_scheme.dart';
import 'package:travel_app/gen/assets.gen.dart';

class SliderImageWidget extends StatelessWidget {
  const SliderImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: 2,
        itemBuilder: (context, index, realIndex) => Container(
              width: 300.w,
              height: 120.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: AppImage.asset(
                      Assets.icons.beach.path,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                      top: 50,
                      left: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText.displayMedium(
                            'Thailand',
                            color: context.colorScheme.onPrimary,
                          ),
                          7.verticalSpace,
                          AppText(
                            'And Explore the world',
                            color: context.colorScheme.gray.lighten(.3),
                          ),
                          7.verticalSpace,
                          ButtonWidget(
                            width: 65,
                            height: 25,
                            onPressed: () {},
                            text: 'Book Now',
                            textStyle: context.textTheme.labelSmall?.copyWith(
                              color: context.colorScheme.primaryText,
                            ),
                            backgroundColor:
                                context.colorScheme.gray.lighten(.1),
                          )
                        ],
                      )),
                ],
              ),
            ),
        options: CarouselOptions(
          aspectRatio: 16 / 9,
          viewportFraction: 0.82,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: false,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          scrollDirection: Axis.horizontal,
        ));
  }
}
