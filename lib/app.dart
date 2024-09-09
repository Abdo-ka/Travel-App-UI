import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/config/theme/theme.dart';
import 'package:travel_app/services/di/di_container.dart';
import 'package:travel_app/services/router/router.dart';

class TravelApp extends StatefulWidget {
  const TravelApp({super.key});

  @override
  State<TravelApp> createState() => _TravelAppState();
}

class _TravelAppState extends State<TravelApp> {
  final AppRouter router = getIt<AppRouter>();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaler: const TextScaler.linear(1.0)),
          child: MaterialApp.router(
            title: "Travel App",
            debugShowCheckedModeBanner: false,
            routerConfig: router.config(),
            theme: AppTheme.light,
            themeMode: ThemeMode.light,
          ),
        );
      },
    );
  }
}
