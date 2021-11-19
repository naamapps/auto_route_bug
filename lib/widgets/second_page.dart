import 'package:auto_route/auto_route.dart';
import 'package:auto_route_bug/router/app_router.gr.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Open Second Page Again'),
          onPressed: () {
            AutoRouter.of(context)
                .push(const SecondRouter(children: [SecondRoute()]));
          },
        ),
      ),
    );
  }
}
