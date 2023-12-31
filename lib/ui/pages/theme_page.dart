import 'package:flutter/material.dart';

class ThemePage extends StatefulWidget {
  const ThemePage({
    super.key,
  });

  @override
  State<ThemePage> createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter theme',
      theme: ThemeData(
        primaryColor: Colors.yellow,
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('qwerasdfefefefe'),
        ),
        body: const Center(
          child: Text('qwerasdf'),
        ),
      ),
    );
  }
}
