// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i6;

import '../widgets/demo_page.dart' as _i4;
import '../widgets/first_page.dart' as _i5;
import '../widgets/home_with_nav.dart' as _i2;
import '../widgets/second_page.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRouter.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.EmptyRouterPage());
    },
    NavRouter.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomeWithNav());
    },
    SecondRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SecondPage());
    },
    FirstRouter.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.EmptyRouterPage());
    },
    DemoRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.DemoPage());
    },
    FirstRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.FirstPage());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRouter.name, path: '/', children: [
          _i1.RouteConfig(NavRouter.name,
              path: '',
              parent: HomeRouter.name,
              children: [
                _i1.RouteConfig(FirstRouter.name,
                    path: '',
                    parent: NavRouter.name,
                    children: [
                      _i1.RouteConfig('#redirect',
                          path: '',
                          parent: FirstRouter.name,
                          redirectTo: 'first',
                          fullMatch: true),
                      _i1.RouteConfig(FirstRoute.name,
                          path: 'first', parent: FirstRouter.name),
                      _i1.RouteConfig(SecondRoute.name,
                          path: 'second', parent: FirstRouter.name)
                    ]),
                _i1.RouteConfig(DemoRoute.name,
                    path: 'demo', parent: NavRouter.name)
              ]),
          _i1.RouteConfig(SecondRoute.name,
              path: 'second', parent: HomeRouter.name)
        ]),
        _i1.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for [_i1.EmptyRouterPage]
class HomeRouter extends _i1.PageRouteInfo<void> {
  const HomeRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for [_i2.HomeWithNav]
class NavRouter extends _i1.PageRouteInfo<void> {
  const NavRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: '', initialChildren: children);

  static const String name = 'NavRouter';
}

/// generated route for [_i3.SecondPage]
class SecondRoute extends _i1.PageRouteInfo<void> {
  const SecondRoute() : super(name, path: 'second');

  static const String name = 'SecondRoute';
}

/// generated route for [_i1.EmptyRouterPage]
class FirstRouter extends _i1.PageRouteInfo<void> {
  const FirstRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: '', initialChildren: children);

  static const String name = 'FirstRouter';
}

/// generated route for [_i4.DemoPage]
class DemoRoute extends _i1.PageRouteInfo<void> {
  const DemoRoute() : super(name, path: 'demo');

  static const String name = 'DemoRoute';
}

/// generated route for [_i5.FirstPage]
class FirstRoute extends _i1.PageRouteInfo<void> {
  const FirstRoute() : super(name, path: 'first');

  static const String name = 'FirstRoute';
}
