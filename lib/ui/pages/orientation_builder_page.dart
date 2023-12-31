import 'package:flutter/material.dart';

class OrientationBuilderPage extends StatefulWidget {
  const OrientationBuilderPage({
    super.key,
  });

  @override
  State<OrientationBuilderPage> createState() => _OrientationBuilderPageState();
}

class _OrientationBuilderPageState extends State<OrientationBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('qwerasdf'),
      ),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 3 : 5,
            children: List.generate(50, (index) => Text('$index')),
          );
        },
      ),
    );
  }
}
