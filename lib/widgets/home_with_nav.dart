import 'package:auto_route/auto_route.dart';
import 'package:auto_route_bug/router/app_router.gr.dart';
import 'package:flutter/material.dart';

class HomeWithNav extends StatelessWidget {
  const HomeWithNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      extendBody: true,
      routes: const [
        FirstRouter(),
        SecondRoute(),
      ],
      builder: (context, child, animation) => child,
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'First',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Second',
            ),
          ],
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
        );
      },
      resizeToAvoidBottomInset: false,
    );
  }
}
