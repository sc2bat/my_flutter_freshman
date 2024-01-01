import 'package:flutter/material.dart';
import 'package:my_flutter_freshman/logger/logger.dart';
import 'package:my_flutter_freshman/ui/stream_page/bloc/counter_bloc.dart';

final counterBloc = CounterBloc();

class BlocPage extends StatefulWidget {
  const BlocPage({
    super.key,
  });

  @override
  State<BlocPage> createState() => _BlocPageState();
}

class _BlocPageState extends State<BlocPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('qwerasdf'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            StreamBuilder<int>(
                stream: counterBloc.getCounter$,
                // initialData: 0,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text('${snapshot.data}');
                  }
                  throw Exception();
                }),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(
                  16.0,
                ),
                minimumSize: const Size(32.0, 64.0),
                maximumSize: const Size(64.0, 128.0),
              ),
              onPressed: () {
                logger.info('qwerasdf press button');
                counterBloc.addCounter();
              },
              child: const Icon(
                Icons.add,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
