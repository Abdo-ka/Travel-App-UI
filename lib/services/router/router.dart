// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

// 🌎 Project imports:
import 'package:travel_app/services/router/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')

class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
       CustomRoute(page: HomeRoute.page, initial: true),
      ];
}
