// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:librarify/transaction.dart';

// class HomeScreen extends StatefulWidget {
//   final String user; // User name received from login screen

//   HomeScreen({required this.user});

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _selectedIndex = 0; // Index of the current selected tab

//   // List of screens to navigate to, update with your actual screens
//   final List<Widget> _screens = [
//     PlaceholderWidget('Home'), // Replace with your actual home screen content
//     PlaceholderWidget(
//         'Finance'), // Replace with your actual finance screen content
//     PlaceholderWidget('Card'), // Replace with your actual card screen content
//     PlaceholderWidget('Me'), // Replace with your actual 'Me' screen content
//   ];

//   // Handle tab selection
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   bool _showBalance = true; // Initial state of showing balance

//   void _toggleShowBalance(bool value) {
//     setState(() {
//       _showBalance = value;
//     });
//   }

//   String _getBalanceText() {
//     return _showBalance ? '\$10,000.00' : '*********';
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('monit'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 CircleAvatar(
//                   backgroundColor: Colors.grey[300],
//                   child: Text(
//                     widget.user.isNotEmpty ? widget.user[0].toUpperCase() : '?',
//                     style: TextStyle(fontSize: 24),
//                   ),
//                 ),
//                 SizedBox(width: 10),
//                 Text(
//                   'Hello, ${widget.user}!',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Account Balance',
//                       style: TextStyle(fontSize: 16),
//                     ),
//                     SizedBox(height: 5),
//                     Text(
//                       _getBalanceText(),
//                       style: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                         color: _showBalance ? Colors.black : Colors.grey,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Switch(
//                   value: _showBalance, // Example toggle value
//                   onChanged: _toggleShowBalance,
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Quick Actions',
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10),
//             Wrap(
//               spacing: 20,
//               children: [
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Color(Colors.blue.value),

//                     // primary: Colors.blue, // Background color
//                     // onPrimary: Colors.white, // Text color
//                   ),
//                   onPressed: () {
//                     // Implement transfer to another monit user action
//                   },
//                   child: Text('Transfer to Monit'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     // Implement transfer out action
//                   },
//                   child: Text('Transfer Out'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     // Implement view transaction history action
//                   },
//                   child: Text('View Transaction History'),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Financial Services',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10),
//             Flex(
//               direction: Axis.horizontal,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     // Implement buy airtime action
//                   },
//                   child: Text('Buy Airtime'),
//                 ),
//                 const Spacer(flex: 2),
//                 ElevatedButton(
//                   onPressed: () {
//                     // Implement save action
//                   },
//                   child: Text('Save'),
//                 ),
//                 const Spacer(flex: 2),
//                 ElevatedButton(
//                   onPressed: () {
//                     // Implement food subscription action
//                   },
//                   child: Text('Food'),
//                 ),
//                 const Spacer(flex: 2),
//                 ElevatedButton(
//                   onPressed: () {
//                     // Implement cashback action
//                   },
//                   child: Text('Cashback'),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Financial Glory',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
//             ),
//             SizedBox(height: 10),
//             // Example financial tips content
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     ListTile(
//                       leading: Icon(Icons.lightbulb_outline),
//                       title: Text('Tip 1: Budgeting'),
//                       subtitle: Text('Always plan your expenses and savings.'),
//                     ),
//                     ListTile(
//                       leading: Icon(Icons.lightbulb_outline),
//                       title: Text('Tip 2: Investments'),
//                       subtitle: Text(
//                           'Consider long-term investments for financial growth.'),
//                     ),
//                     ListTile(
//                       leading: Icon(Icons.lightbulb_outline),
//                       title: Text('Tip 3: Emergency Fund'),
//                       subtitle: Text(
//                           'Maintain an emergency fund for unexpected expenses.'),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             TransactionHistory(),
//             SizedBox(height: 20),
//             BottomNavigationBar(
//               items: [
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.home, color: Colors.grey,),
//                   label: 'Home',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.account_balance_wallet, color: Colors.grey,),
//                   label: 'Finance',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.credit_card, color: Colors.grey,),
//                   label: 'Card',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.person, color: Colors.grey,),
//                   label: 'Me',
//                 ),
//               ],
//               currentIndex: _selectedIndex,
//               selectedIconTheme: const IconThemeData(color: Colors.blue),
//               selectedItemColor: Colors.blue, // Customize selected tab color
//               onTap: _onItemTapped,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Example placeholder widget for each tab
// class PlaceholderWidget extends StatelessWidget {
//   final String title;

//   PlaceholderWidget(this.title);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         title,
//         style: TextStyle(fontSize: 24),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:librarify/transaction.dart';

class HomeScreen extends StatefulWidget {
  final String user; // User name received from login screen

  HomeScreen({required this.user});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0; // Index of the current selected tab

  // List of screens to navigate to, update with your actual screens
  final List<Widget> _screens = [
    PlaceholderWidget('Home'), // Replace with your actual home screen content
    PlaceholderWidget(
        'Finance'), // Replace with your actual finance screen content
    PlaceholderWidget('Card'), // Replace with your actual card screen content
    PlaceholderWidget('Me'), // Replace with your actual 'Me' screen content
  ];

  // Handle tab selection
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bool _showBalance = true; // Initial state of showing balance

  void _toggleShowBalance(bool value) {
    setState(() {
      _showBalance = value;
    });
  }

  String _getBalanceText() {
    return _showBalance ? '\$10,000.00' : '*********';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('monit'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  child: Text(
                    widget.user.isNotEmpty ? widget.user[0].toUpperCase() : '?',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'Hello, ${widget.user}!',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Account Balance',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 5),
                    Text(
                      _getBalanceText(),
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: _showBalance ? Colors.black : Colors.grey,
                      ),
                    ),
                  ],
                ),
                Switch(
                  value: _showBalance, // Example toggle value
                  onChanged: _toggleShowBalance,
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Quick Actions',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Wrap(
              spacing: 20, // Horizontal spacing between buttons
              runSpacing: 20, // Vertical spacing between rows of buttons
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    // Implement transfer to another monit user action
                  },
                  child: Text('Transfer to Monit'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Implement transfer out action
                  },
                  child: Text('Transfer Out'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Implement view transaction history action
                  },
                  child: Text('View Transaction History'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Financial Services',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Wrap(
              spacing: 20, // Horizontal spacing between buttons
              runSpacing: 20, // Vertical spacing between rows of buttons
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Implement buy airtime action
                  },
                  child: Text('Buy Airtime'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Implement save action
                  },
                  child: Text('Save'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Implement food subscription action
                  },
                  child: Text('Food'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Implement cashback action
                  },
                  child: Text('Cashback'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Financial Tips',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: Icon(Icons.lightbulb_outline),
                      title: Text('Tip 1: Budgeting'),
                      subtitle: Text('Always plan your expenses and savings.'),
                    ),
                    ListTile(
                      leading: Icon(Icons.lightbulb_outline),
                      title: Text('Tip 2: Investments'),
                      subtitle: Text(
                          'Consider long-term investments for financial growth.'),
                    ),
                    ListTile(
                      leading: Icon(Icons.lightbulb_outline),
                      title: Text('Tip 3: Emergency Fund'),
                      subtitle: Text(
                          'Maintain an emergency fund for unexpected expenses.'),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Transaction History',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    TransactionHistory(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet, color: Colors.grey),
            label: 'Finance',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card, color: Colors.grey),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.grey),
            label: 'Me',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedIconTheme: const IconThemeData(color: Colors.blue),
        selectedItemColor: Colors.blue, // Customize selected tab color
        onTap: _onItemTapped,
      ),
    );
  }
}

// Example placeholder widget for each tab
class PlaceholderWidget extends StatelessWidget {
  final String title;

  PlaceholderWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
