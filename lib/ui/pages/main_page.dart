import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter 초급'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildPushList(
                routeAddr: '/animatedContainerPage',
                titleText: 'AnimatedContainer'),
            BuildPushList(
                routeAddr: '/animatedOpacityPage',
                titleText: 'AnimatedOpacity'),
            BuildPushList(
                routeAddr: '/navigationDrawerPage',
                titleText: 'navigationDrawerPage'),
            BuildPushList(
                routeAddr: '/snackbarPage', titleText: 'snackbarPage'),
            BuildPushList(
                routeAddr: '/orientationBuilderPage',
                titleText: 'orientationBuilderPage'),
            BuildPushList(routeAddr: '/themePage', titleText: 'themePage'),
            BuildPushList(
                routeAddr: '/tabControllerPage',
                titleText: 'TabControllerPage'),
            BuildPushList(
                routeAddr: '/formValidationPage',
                titleText: 'FormValidationPage'),
            BuildPushList(
                routeAddr: '/dissmissiblePage', titleText: 'DissmissiblePage'),
            BuildPushList(
                routeAddr: '/slideScreenPage', titleText: 'slideScreenPage'),
          ],
        ),
      ),
    );
  }
}

class BuildPushList extends StatelessWidget {
  final String routeAddr;
  final String titleText;

  const BuildPushList({
    super.key,
    required this.routeAddr,
    required this.titleText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: () => context.push(routeAddr),
        child: SizedBox(
          height: 32.0,
          child: Text(titleText),
        ),
      ),
    );
  }
}
