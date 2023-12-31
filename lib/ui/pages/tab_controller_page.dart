import 'package:flutter/material.dart';

class TabControllerPage extends StatefulWidget {
  const TabControllerPage({
    super.key,
  });

  @override
  State<TabControllerPage> createState() => _TabControllerPageState();
}

class _TabControllerPageState extends State<TabControllerPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('qwerasdf'),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.alarm,
                ),
                text: 'alarm',
              ),
              Tab(
                icon: Icon(
                  Icons.fmd_good,
                ),
                text: 'good',
              ),
              Tab(
                icon: Icon(
                  Icons.login,
                ),
                text: 'login',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Text('tab bar 111'),
            Center(child: Text('tab bar222')),
            Column(
              children: [
                Text('tab bar 333'),
              ],
            ),
            Text('alarm111'),
          ],
        ),
      ),
    );
  }
}
