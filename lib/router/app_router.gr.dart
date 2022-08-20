// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:auto_route/empty_router_widgets.dart' as _i1;
import 'package:flutter/material.dart' as _i7;

import '../widgets/demo_page.dart' as _i3;
import '../widgets/first_page.dart' as _i4;
import '../widgets/home_with_nav.dart' as _i2;
import '../widgets/second_page.dart' as _i5;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomeRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.EmptyRouterPage());
    },
    NavRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomeWithNav());
    },
    SecondRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.EmptyRouterPage());
    },
    FirstRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.EmptyRouterPage());
    },
    DemoRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.DemoPage());
    },
    FirstRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.FirstPage());
    },
    SecondRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SecondPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(HomeRouter.name, path: '/', children: [
          _i6.RouteConfig(NavRouter.name,
              path: '',
              parent: HomeRouter.name,
              children: [
                _i6.RouteConfig(FirstRouter.name,
                    path: '',
                    parent: NavRouter.name,
                    children: [
                      _i6.RouteConfig('#redirect',
                          path: '',
                          parent: FirstRouter.name,
                          redirectTo: 'first',
                          fullMatch: true),
                      _i6.RouteConfig(FirstRoute.name,
                          path: 'first', parent: FirstRouter.name),
                      _i6.RouteConfig(SecondRouter.name,
                          path: 'second',
                          parent: FirstRouter.name,
                          children: [
                            _i6.RouteConfig(SecondRoute.name,
                                path: '', parent: SecondRouter.name)
                          ])
                    ]),
                _i6.RouteConfig(DemoRoute.name,
                    path: 'demo', parent: NavRouter.name)
              ]),
          _i6.RouteConfig(SecondRouter.name,
              path: 'second',
              parent: HomeRouter.name,
              children: [
                _i6.RouteConfig(SecondRoute.name,
                    path: '', parent: SecondRouter.name)
              ])
        ]),
        _i6.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.EmptyRouterPage]
class HomeRouter extends _i6.PageRouteInfo<void> {
  const HomeRouter({List<_i6.PageRouteInfo>? children})
      : super(HomeRouter.name, path: '/', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i2.HomeWithNav]
class NavRouter extends _i6.PageRouteInfo<void> {
  const NavRouter({List<_i6.PageRouteInfo>? children})
      : super(NavRouter.name, path: '', initialChildren: children);

  static const String name = 'NavRouter';
}

/// generated route for
/// [_i1.EmptyRouterPage]
class SecondRouter extends _i6.PageRouteInfo<void> {
  const SecondRouter({List<_i6.PageRouteInfo>? children})
      : super(SecondRouter.name, path: 'second', initialChildren: children);

  static const String name = 'SecondRouter';
}

/// generated route for
/// [_i1.EmptyRouterPage]
class FirstRouter extends _i6.PageRouteInfo<void> {
  const FirstRouter({List<_i6.PageRouteInfo>? children})
      : super(FirstRouter.name, path: '', initialChildren: children);

  static const String name = 'FirstRouter';
}

/// generated route for
/// [_i3.DemoPage]
class DemoRoute extends _i6.PageRouteInfo<void> {
  const DemoRoute() : super(DemoRoute.name, path: 'demo');

  static const String name = 'DemoRoute';
}

/// generated route for
/// [_i4.FirstPage]
class FirstRoute extends _i6.PageRouteInfo<void> {
  const FirstRoute() : super(FirstRoute.name, path: 'first');

  static const String name = 'FirstRoute';
}

/// generated route for
/// [_i5.SecondPage]
class SecondRoute extends _i6.PageRouteInfo<void> {
  const SecondRoute() : super(SecondRoute.name, path: '');

  static const String name = 'SecondRoute';
}
