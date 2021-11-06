import 'package:auto_route/auto_route.dart';
import 'package:auto_route_bug/widgets/first_page.dart';
import 'package:auto_route_bug/widgets/home_with_nav.dart';
import 'package:auto_route_bug/widgets/second_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      name: 'HomeRouter',
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
            AutoRoute(
              path: 'second',
              page: SecondPage,
              initial: true,
            ),
          ],
        ),
        AutoRoute(
          path: 'second',
          page: SecondPage,
        ),
      ],
    ),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $AppRouter {}
