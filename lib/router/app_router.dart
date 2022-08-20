import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:auto_route_bug/widgets/demo_page.dart';
import 'package:auto_route_bug/widgets/first_page.dart';
import 'package:auto_route_bug/widgets/home_with_nav.dart';
import 'package:auto_route_bug/widgets/second_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      name: 'HomeRouter',
      page: EmptyRouterPage,
      initial: true,
      children: [
        AutoRoute(
          path: '',
          name: 'NavRouter',
          page: HomeWithNav,
          initial: true,
          children: [
            AutoRoute(
              path: '',
              name: 'FirstRouter',
              page: EmptyRouterPage,
              initial: true,
              children: [
                AutoRoute(
                  path: 'first',
                  page: FirstPage,
                  initial: true,
                ),
                _secondRoute,
              ],
            ),
            AutoRoute(
              path: 'demo',
              page: DemoPage,
            ),
          ],
        ),
        _secondRoute,
      ],
    ),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $AppRouter {}

const AutoRoute _secondRoute = AutoRoute(
  path: 'second',
  name: "SecondRouter",
  page: EmptyRouterPage,
  children: [
    AutoRoute(
      path: '',
      page: SecondPage,
      initial: true,
    ),
  ],
);
