// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_app/services/di/di_container.config.dart';

// 🌎 Project imports:

import '../../services/router/router.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
Future<GetIt> configureDependencies() async => getIt.init();

@module
abstract class AppModule {

  @singleton
  AppRouter get router => AppRouter();
}
