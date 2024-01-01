import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({
    super.key,
  });

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;
  final counterSubject = BehaviorSubject<int>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  // _counter++;
                  counterSubject.add(++_counter);
                });
              },
              child: const Text('add'),
            ),
            StreamBuilder<int>(
                stream: counterSubject.stream,
                initialData: 0,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const CircularProgressIndicator();
                  } else {
                    return Text(
                      '${snapshot.data}',
                      style: const TextStyle(
                        fontSize: 32.0,
                      ),
                    );
                  }
                }),
          ],
        ),
      ),
    );
  }
}
