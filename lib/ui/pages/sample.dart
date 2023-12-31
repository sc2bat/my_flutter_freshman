import 'package:flutter/material.dart';

class Sample extends StatefulWidget {
  const Sample({super.key, required this.title});

  final String title;

  @override
  State<Sample> createState() => _SampleState();
}

class _SampleState extends State<Sample> {
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
