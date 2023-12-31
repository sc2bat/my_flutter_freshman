import 'package:flutter/material.dart';

class SlideScreenPage extends StatefulWidget {
  const SlideScreenPage({
    super.key,
  });

  @override
  State<SlideScreenPage> createState() => _SlideScreenPageState();
}

class _SlideScreenPageState extends State<SlideScreenPage> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.blue,
        ),
        Container(
          color: Colors.green,
        ),
      ],
    );
  }
}
