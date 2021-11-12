import 'package:auto_route/auto_route.dart';
import 'package:auto_route_bug/router/app_router.gr.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final appRouter = AppRouter();
StackRouter? get homeRouter =>
    appRouter.innerRouterOf(HomeRouter.name) as StackRouter?;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
