import 'package:auto_route/auto_route.dart';
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
                  context: context,
                  // If this is true, the dialog will cover the entire screen. And when pushing the second page, it will be behind the dialog.
                  // If this is false, the dialog will cover only the route (without the nav bar - this is good), and when pushing the second page, it will throw the setState() or markNeedsBuild() called during build erorr.
                  useRootNavigator: true,
                  builder: (context) {
                    return AlertDialog(
                      title: TextButton(
                        onPressed: () {
                          AutoRouter.of(context).push(const SecondRoute());
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
                AutoRouter.of(context).push(const SecondRoute());
              },
              child: const Text('Open Nested Second Page'),
            ),
          ],
        ),
      ),
    );
  }
}
