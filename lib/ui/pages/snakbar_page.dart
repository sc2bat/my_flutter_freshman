import 'package:flutter/material.dart';
import 'package:my_flutter_freshman/logger/logger.dart';

class SnackbarPage extends StatefulWidget {
  const SnackbarPage({super.key});

  @override
  State<SnackbarPage> createState() => _SnackbarPageState();
}

class _SnackbarPageState extends State<SnackbarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('qwerasdf'),
      ),
      body: Builder(
        builder: (context) => Center(
          child: ElevatedButton(
            onPressed: () {
              final snackBar = SnackBar(
                content: const Text('SnackBar~~'),
                action: SnackBarAction(
                    label: 'cancel',
                    onPressed: () {
                      logger.info('qwerasdf snackbar cancel');
                    }),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: const Text(
              'show Snackbar',
            ),
          ),
        ),
      ),
    );
  }
}
