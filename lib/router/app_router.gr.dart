// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i5;

import '../widgets/first_page.dart' as _i4;
import '../widgets/home_with_nav.dart' as _i1;
import '../widgets/second_page.dart' as _i3;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeWithNav());
    },
    FirstRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    SecondRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SecondPage());
    },
    FirstRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.FirstPage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(HomeRouter.name, path: '/', children: [
          _i2.RouteConfig(FirstRouter.name,
              path: '',
              parent: HomeRouter.name,
              children: [
                _i2.RouteConfig('#redirect',
                    path: '',
                    parent: FirstRouter.name,
                    redirectTo: 'first',
                    fullMatch: true),
                _i2.RouteConfig(FirstRoute.name,
                    path: 'first', parent: FirstRouter.name),
                _i2.RouteConfig(SecondRoute.name,
                    path: 'second', parent: FirstRouter.name)
              ]),
          _i2.RouteConfig(SecondRoute.name,
              path: 'second', parent: HomeRouter.name)
        ]),
        _i2.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for [_i1.HomeWithNav]
class HomeRouter extends _i2.PageRouteInfo<void> {
  const HomeRouter({List<_i2.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for [_i2.EmptyRouterPage]
class FirstRouter extends _i2.PageRouteInfo<void> {
  const FirstRouter({List<_i2.PageRouteInfo>? children})
      : super(name, path: '', initialChildren: children);

  static const String name = 'FirstRouter';
}

/// generated route for [_i3.SecondPage]
class SecondRoute extends _i2.PageRouteInfo<void> {
  const SecondRoute() : super(name, path: 'second');

  static const String name = 'SecondRoute';
}

/// generated route for [_i4.FirstPage]
class FirstRoute extends _i2.PageRouteInfo<void> {
  const FirstRoute() : super(name, path: 'first');

  static const String name = 'FirstRoute';
}
