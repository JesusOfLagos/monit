// import 'package:flutter/material.dart';
// import 'package:librarify/dashboard.dart';

// class LoginForm extends StatefulWidget {
//   @override
//   _LoginFormState createState() => _LoginFormState();
// }

// class LoginScreen extends StatelessWidget {
//   @override
//   FocusNode _emailFocus = FocusNode();
//   FocusNode _passwordFocus = FocusNode();

//   bool _emailFocused = false;
//   bool _passwordFocused = false;

//   @override
//   void initState() {
//     super.initState();
//     _emailFocus.addListener(() {
//       setState(() {
//         _emailFocused = _emailFocus.hasFocus;
//       });
//     });
//     _passwordFocus.addListener(() {
//       setState(() {
//         _passwordFocused = _passwordFocus.hasFocus;
//       });
//     });
//   }

//   @override
//   void dispose() {
//     _emailFocus.dispose();
//     _passwordFocus.dispose();
//     super.dispose();
//   }
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Log In'),
//       ),
// body: Padding(
//   padding: EdgeInsets.all(20),
//   child: Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       // Text('Log in to your account', selectionColor: Colors.blue, textAlign: Center(key: Key(),),),
//       Container(
//         alignment: Alignment.center,
//         child: Text(
//           'Log in to your account',
//           selectionColor: Colors.blue,
//           textAlign: TextAlign.center,
//           // style:Color(Colors.blue.value)
//           ),
//         ),

//               Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: Column(
//         children: [
//           AnimatedContainer(
//             duration: Duration(milliseconds: 300),
//             padding: EdgeInsets.only(top: 20.0, bottom: _emailFocused ? 20.0 : 10.0),
//             child: TextFormField(
//               focusNode: _emailFocus,
//               decoration: InputDecoration(
//                 labelText: 'Email',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10.0),
//                   borderSide: BorderSide(
//                     color: Colors.blue,
//                   ),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10.0),
//                   borderSide: BorderSide(
//                     color: Colors.blue,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           AnimatedContainer(
//             duration: Duration(milliseconds: 300),
//             padding: EdgeInsets.only(top: 20.0, bottom: _passwordFocused ? 20.0 : 10.0),
//             child: TextFormField(
//               focusNode: _passwordFocus,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10.0),
//                   borderSide: BorderSide(
//                     color: Colors.blue,
//                   ),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10.0),
//                   borderSide: BorderSide(
//                     color: Colors.blue,
//                   ),
//                 ),
//               ),
//               obscureText: true,
//             ),
//           ),
//         ],
//       ),
//     );

//             // TextFormField(
//             //   decoration: InputDecoration(labelText: 'Email', border: InputBorder(borderSide: BorderSide.strokeAlignOutside)),

//             // ),
//             // TextFormField(
//             //   decoration: InputDecoration(labelText: 'Password'),
//             //   obscureText: true,
//             // ),
//             ElevatedButton(
//               onPressed: () {
//                 // Example navigation to home screen
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => HomeScreen(
//                           user:
//                               'Maryam')), // Replace 'John Doe' with actual user name
//                 );
//               },
//               child: Text('Log In'),
//             ),
//             SizedBox(height: 10),
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(
//                     context); // Go back to previous screen (if needed)
//               },
//               child: Text('Create a new account'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:librarify/dashboard.dart';
import 'package:librarify/signup.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  FocusNode _emailFocus = FocusNode();
  FocusNode _passwordFocus = FocusNode();

  bool _emailFocused = false;
  bool _passwordFocused = false;

  @override
  void initState() {
    super.initState();
    _emailFocus.addListener(() {
      setState(() {
        _emailFocused = _emailFocus.hasFocus;
      });
    });
    _passwordFocus.addListener(() {
      setState(() {
        _passwordFocused = _passwordFocus.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _emailFocus.dispose();
    _passwordFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log In'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   'Log in to your account',
            //   style: TextStyle(
            //     fontSize: 20,
            //     color: Colors.blue,
            //     fontWeight: FontWeight.bold,
            //   ),
            //   textAlign: TextAlign.center,
            // ),
            // Text('Log in to your account', selectionColor: Colors.blue, textAlign: Center(key: Key(),),),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Log in to your account',
                selectionColor: Colors.blue,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              padding: EdgeInsets.only(bottom: _emailFocused ? 20.0 : 10.0),
              child: TextFormField(
                focusNode: _emailFocus,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              padding: EdgeInsets.only(bottom: _passwordFocused ? 20.0 : 10.0),
              child: TextFormField(
                focusNode: _passwordFocus,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
                obscureText: true,
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0), // Adjust padding
                minimumSize:
                    Size(double.infinity, 50), // Set minimum button size
              ),
              onPressed: () {
                // Example navigation to home screen
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(
                      user: 'Maryam', // Replace with actual user name
                    ),
                  ),
                );
              },
              child: Text(
                'Log In',
                selectionColor: Colors.blue,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreateAccountScreen(),
                  ),
                );
              },
              child: Text('Create a new account', style: TextStyle(fontSize: 15, color: Colors.grey),),
            ),
          ],
        ),
      ),
    );
  }
}
