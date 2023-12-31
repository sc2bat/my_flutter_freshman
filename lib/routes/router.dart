import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_flutter_freshman/ui/pages/animated_container_page.dart';
import 'package:my_flutter_freshman/ui/pages/animated_opacity_page.dart';
import 'package:my_flutter_freshman/ui/pages/main_page.dart';
import 'package:my_flutter_freshman/ui/pages/navigation_drawer_page.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (BuildContext context, GoRouterState state) {
      return const MainPage();
    },
  ),
  GoRoute(
    path: '/animatedContainerPage',
    builder: (BuildContext context, GoRouterState state) {
      return const AnimatedContainerPage(title: 'AnimatedContainer');
    },
  ),
  GoRoute(
    path: '/animatedOpacityPage',
    builder: (BuildContext context, GoRouterState state) {
      return const AnimatedOpacityPage();
    },
  ),
  GoRoute(
    path: '/navigationDrawerPage',
    builder: (BuildContext context, GoRouterState state) {
      return const NavigationDrawerPage();
    },
  ),
]);
