// import 'package:flutter/material.dart';
// import 'package:librarify/login.dart';
// import 'package:librarify/signup.dart';

// class WelcomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Welcome to monit',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => CreateAccountScreen()),
//                 );
//               },
//               child: Text('Sign Up'),
//             ),
//             SizedBox(height: 10),
//             TextButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => LoginForm()),
//                 );
//               },
//               child: Text('Log In'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:librarify/login.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Timer to navigate to login screen after 5 seconds
    Timer(Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginForm()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.blue, // Set background color to blue
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome To Monit',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 20),
            // Image.asset(
            //   'assets/monit.jpeg', // Replace with your image asset path
            //   height: 200, // Adjust height as needed
            // ),
            SvgPicture.network(
              'https://www.pexels.com/photo/mooi-logo-1337380/',
              semanticsLabel: 'A red up arrow',
              color: Colors.red,
              width: 24,
              height: 24,
            ),
            SizedBox(height: 20),
            Text(
              'Your Path to financial inclusivity.',
              style: TextStyle(fontSize: 26, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
