// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:travel_app/features/home/view/base_page.dart' as _i1;
import 'package:travel_app/features/home/view/home_page.dart' as _i2;
import 'package:travel_app/features/search/view/search_page.dart' as _i3;
import 'package:travel_app/features/share/view/share_page.dart' as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    BaseRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BasePage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SearchPage(),
      );
    },
    ShareRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SharePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.BasePage]
class BaseRoute extends _i5.PageRouteInfo<void> {
  const BaseRoute({List<_i5.PageRouteInfo>? children})
      : super(
          BaseRoute.name,
          initialChildren: children,
        );

  static const String name = 'BaseRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SearchPage]
class SearchRoute extends _i5.PageRouteInfo<void> {
  const SearchRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SharePage]
class ShareRoute extends _i5.PageRouteInfo<void> {
  const ShareRoute({List<_i5.PageRouteInfo>? children})
      : super(
          ShareRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShareRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
