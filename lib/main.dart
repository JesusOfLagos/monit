import 'package:flutter/material.dart';
import 'package:librarify/home.dart';

void main() => runApp(const Monit());

class Monit extends StatelessWidget {
  const Monit({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive UI',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}