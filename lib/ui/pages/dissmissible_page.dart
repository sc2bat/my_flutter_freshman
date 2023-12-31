import 'package:flutter/material.dart';
import 'package:my_flutter_freshman/logger/logger.dart';

class DissmissiblePage extends StatefulWidget {
  const DissmissiblePage({
    super.key,
  });

  @override
  State<DissmissiblePage> createState() => _DissmissiblePageState();
}

class _DissmissiblePageState extends State<DissmissiblePage> {
  final items = List<String>.generate(20, (index) => 'Item ${index + 1}');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('qwerasdf'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Dismissible(
            key: Key(item),
            direction: DismissDirection.startToEnd,
            background: Container(
              color: Colors.red,
            ),
            onDismissed: (direction) {
              setState(() {
                items.removeAt(index);
              });
              logger.info(items.length);
            },
            child: ListTile(
              title: Text('qwer $item'),
            ),
          );
        },
      ),
    );
  }
}
