import 'package:flutter/material.dart';

class NavigationDrawerPage extends StatefulWidget {
  const NavigationDrawerPage({super.key});

  @override
  State<NavigationDrawerPage> createState() => _NavigationDrawerPageState();
}

class _NavigationDrawerPageState extends State<NavigationDrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.amber,
              ),
              child: GestureDetector(
                onTap: () {},
                child: const Text('go Main'),
              ),
            ),
            ListTile(
              title: const Text('list 0001'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: const Text('list 0002'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: const Text('list 0003'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: const Text('list 0004'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: const Text('list 0005'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: const Text('list 0006'),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('NavigationDrawerPage'),
      ),
      body: const Center(
        child: Text('Drawer Sample'),
      ),
    );
  }
}
