import 'package:flutter/material.dart';
import 'package:librarify/welcome.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Monit'),
      // ),
      body: Center (child: WelcomeScreen(),)
    );
  }
}