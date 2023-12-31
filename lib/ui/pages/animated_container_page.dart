import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_flutter_freshman/logger/logger.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({super.key, required this.title});

  final String title;

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.black45;
  BorderRadius _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    final random = Random();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          duration: const Duration(
            seconds: 1,
          ),
          curve: Curves.fastOutSlowIn,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          double colorOpacity = random.nextDouble();
          logger.info('qwerasdf $colorOpacity');
          setState(() {
            _width = random.nextDouble() * 300;
            _height = random.nextDouble() * 300;
            _color = Color.fromRGBO(
              random.nextInt(256),
              random.nextInt(256),
              random.nextInt(256),
              colorOpacity,
            );
            _borderRadius = BorderRadius.circular(random.nextDouble() * 30);
          });
        },
        child: const Icon(
          Icons.play_arrow,
        ),
      ),
    );
  }
}
