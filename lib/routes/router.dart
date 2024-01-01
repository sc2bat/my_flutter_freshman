import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_flutter_freshman/ui/pages/animated_container_page.dart';
import 'package:my_flutter_freshman/ui/pages/animated_opacity_page.dart';
import 'package:my_flutter_freshman/ui/pages/dissmissible_page.dart';
import 'package:my_flutter_freshman/ui/pages/form_validation_page.dart';
import 'package:my_flutter_freshman/ui/pages/main_page.dart';
import 'package:my_flutter_freshman/ui/pages/navigation_drawer_page.dart';
import 'package:my_flutter_freshman/ui/pages/orientation_builder_page.dart';
import 'package:my_flutter_freshman/ui/pages/slide_screen_page.dart';
import 'package:my_flutter_freshman/ui/pages/snakbar_page.dart';
import 'package:my_flutter_freshman/ui/pages/tab_controller_page.dart';
import 'package:my_flutter_freshman/ui/pages/theme_page.dart';
import 'package:my_flutter_freshman/ui/stream_page/bloc_page.dart';
import 'package:my_flutter_freshman/ui/stream_page/counter_page.dart';

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
  GoRoute(
    path: '/snackbarPage',
    builder: (BuildContext context, GoRouterState state) {
      return const SnackbarPage();
    },
  ),
  GoRoute(
    path: '/orientationBuilderPage',
    builder: (BuildContext context, GoRouterState state) {
      return const OrientationBuilderPage();
    },
  ),
  GoRoute(
    path: '/themePage',
    builder: (BuildContext context, GoRouterState state) {
      return const ThemePage();
    },
  ),
  GoRoute(
    path: '/tabControllerPage',
    builder: (BuildContext context, GoRouterState state) {
      return const TabControllerPage();
    },
  ),
  GoRoute(
    path: '/formValidationPage',
    builder: (BuildContext context, GoRouterState state) {
      return const FormValidationPage();
    },
  ),
  GoRoute(
    path: '/dissmissiblePage',
    builder: (BuildContext context, GoRouterState state) {
      return const DissmissiblePage();
    },
  ),
  GoRoute(
    path: '/slideScreenPage',
    builder: (BuildContext context, GoRouterState state) {
      return const SlideScreenPage();
    },
  ),
  GoRoute(
    path: '/counterPage',
    builder: (BuildContext context, GoRouterState state) {
      return const CounterPage();
    },
  ),
  GoRoute(
    path: '/BlocPage',
    builder: (BuildContext context, GoRouterState state) {
      return const BlocPage();
    },
  ),
]);
