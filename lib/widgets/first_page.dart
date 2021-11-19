import 'package:auto_route/auto_route.dart';
import 'package:auto_route_bug/main.dart';
import 'package:auto_route_bug/router/app_router.gr.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                showDialog(
                  context: homeRouter!.navigatorKey.currentContext!,
                  // If this is true, the dialog will cover the entire screen. And when pushing the second page, it will be behind the dialog.
                  // If this is false, the dialog will cover only the route (without the nav bar - this is good), and when pushing the second page, it will throw the setState() or markNeedsBuild() called during build erorr.
                  useRootNavigator: false,
                  builder: (context) {
                    return AlertDialog(
                      title: TextButton(
                        onPressed: () {
                          AutoRouter.of(context).push(
                              const SecondRouter(children: [SecondRoute()]));
                        },
                        child: const Text('Open Second Page'),
                      ),
                    );
                  },
                );
              },
              child: const Text('Open dialog'),
            ),
            TextButton(
              onPressed: () {
                AutoRouter.of(context)
                    .push(const SecondRouter(children: [SecondRoute()]));
              },
              child: const Text('Open Nested Second Page'),
            ),
            // Another bug! This push should be above everything but it is still opening the nested route.
            TextButton(
              onPressed: () {
                homeRouter!.push(const SecondRouter(children: [SecondRoute()]));
              },
              child: const Text(
                  'Open Second Page From HomeRouter (Should hide bottom navbar)'),
            ),
          ],
        ),
      ),
    );
  }
}
