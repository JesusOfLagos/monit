import 'package:flutter/material.dart';

class Progress extends StatelessWidget {
  const Progress({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text('Loading...'),
        LinearProgressIndicator(value: 0.1, color: Colors.black,),
      ],
    );
  }
}