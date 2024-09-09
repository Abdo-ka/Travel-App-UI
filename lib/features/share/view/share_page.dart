import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/features/share/widget/post_widget.dart';
import 'package:travel_app/features/share/widget/story_slider.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/services/router/router.gr.dart';

@RoutePage()
class SharePage extends StatelessWidget {
  const SharePage({super.key});

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
                  AppButton.tertiary(
                    child: const Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      context.router.push(
                        const BaseRoute(children: [HomeRoute()]),
                      );
                    },
                  ),
                  10.horizontalSpace,
                  AppText.titleLarge(
                    'The Holiday',
                    fontWeight: FontWeight.bold,
                  )
                ],
              ),
              Row(
                children: [
                  AppImage.asset(
                    Assets.icons.send,
                    color: context.colorScheme.shadow,
                  ),
                  10.horizontalSpace,
                  AppImage.asset(
                    Assets.icons.notification,
                  )
                ],
              )
            ],
          ),
          10.verticalSpace,
          StorySliderWidget(),
          20.verticalSpace,
          PostWidget(),
        ],
      ),
    );
  }
}
