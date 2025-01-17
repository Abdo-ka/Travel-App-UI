import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/services/di/di_container.dart';

preInitializations() async {
  await configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait([
    ScreenUtil.ensureScreenSize(),
  ]);

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}
