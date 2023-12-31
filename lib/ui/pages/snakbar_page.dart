import 'package:flutter/material.dart';

class SnakbarPage extends StatefulWidget {
  const SnakbarPage({super.key, required this.title});

  final String title;

  @override
  State<SnakbarPage> createState() => _SnakbarPageState();
}

class _SnakbarPageState extends State<SnakbarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('qwerasdf'),
      ),
      body: const Center(
        child: Text('qwerasdf'),
      ),
    );
  }
}
