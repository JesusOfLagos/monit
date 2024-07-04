// import 'package:flutter/material.dart';

// class Transaction {
//   final String title;
//   final String amount;
//   final String date;

//   Transaction({
//     required this.title,
//     required this.amount,
//     required this.date,
//   });
// }

// class TransactionHistory extends StatefulWidget {
//   @override
//   _TransactionHistoryState createState() => _TransactionHistoryState();
// }

// class _TransactionHistoryState extends State<TransactionHistory> {
//   final List<Transaction> _transactions = [];
//   bool _isLoading = false;
//   int _currentPage = 0;

//   @override
//   void initState() {
//     super.initState();
//     _loadMoreTransactions();
//   }

//   Future<void> _loadMoreTransactions() async {
//     if (_isLoading) return;
//     setState(() {
//       _isLoading = true;
//     });

//     // Simulate fetching data from an API with a delay
//     await Future.delayed(Duration(seconds: 2));

//     List<Transaction> newTransactions = List.generate(10, (index) {
//       int number = _currentPage * 10 + index + 1;
//       return Transaction(
//         title: 'Transaction $number',
//         amount: number.isEven ? '+\$${number * 10}.00' : '-\$${number * 5}.00',
//         date: '2024-07-${number % 31 + 1}',
//       );
//     });

//     setState(() {
//       _transactions.addAll(newTransactions);
//       _isLoading = false;
//       _currentPage++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.blue, // Blue background color
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               'Transaction History',
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           Expanded(
//             child: NotificationListener<ScrollNotification>(
//               onNotification: (ScrollNotification scrollInfo) {
//                 if (!_isLoading &&
//                     scrollInfo.metrics.pixels ==
//                         scrollInfo.metrics.maxScrollExtent) {
//                   _loadMoreTransactions();
//                   return true;
//                 }
//                 return false;
//               },
//               child: ListView.builder(
//                 itemCount: _transactions.length + 1, // Add one more item for the loading indicator
//                 itemBuilder: (context, index) {
//                   if (index == _transactions.length) {
//                     return _isLoading
//                         ? Center(
//                             child: CircularProgressIndicator(),
//                           )
//                         : SizedBox.shrink(); // Empty space at the bottom
//                   }

//                   return Card(
//                     elevation: 3,
//                     margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//                     child: ListTile(
//                       title: Text(
//                         _transactions[index].title,
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       subtitle: Text(_transactions[index].date),
//                       trailing: Text(
//                         _transactions[index].amount,
//                         style: TextStyle(
//                           color: _transactions[index].amount.startsWith('+')
//                               ? Colors.green
//                               : Colors.red,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       onTap: () {
//                         showDialog(
//                           context: context,
//                           builder: (BuildContext context) {
//                             return AlertDialog(
//                               title: Text(_transactions[index].title),
//                               content: Text(
//                                 'Amount: ${_transactions[index].amount}\nDate: ${_transactions[index].date}',
//                               ),
//                               actions: [
//                                 TextButton(
//                                   child: Text('Close'),
//                                   onPressed: () {
//                                     Navigator.of(context).pop();
//                                   },
//                                 ),
//                               ],
//                             );
//                           },
//                         );
//                       },
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  final List<Map<String, String>> transactions = [
    {"date": "2024-07-01", "amount": "\$200.00", "description": "Groceries"},
    {"date": "2024-06-30", "amount": "\$150.00", "description": "Rent"},
    {"date": "2024-07-01", "amount": "\$200.00", "description": "Groceries"},
    {"date": "2024-07-01", "amount": "\$200.00", "description": "Groceries"},
    {"date": "2024-06-30", "amount": "\$150.00", "description": "Rent"},
    {"date": "2024-07-01", "amount": "\$200.00", "description": "Groceries"},
    {"date": "2024-07-01", "amount": "\$200.00", "description": "Groceries"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.withOpacity(0.1), // Light blue background
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(transactions[index]["description"]!),
            subtitle: Text(transactions[index]["date"]!),
            trailing: Text(transactions[index]["amount"]!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TransactionDetail(
                    transaction: transactions[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

// class TransactionDetail extends StatelessWidget {
//   final Map<String, String> transaction;

//   TransactionDetail({required this.transaction});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Transaction Details'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Date: ${transaction["date"]}',
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Amount: ${transaction["amount"]}',
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Description: ${transaction["description"]}',
//               style: TextStyle(fontSize: 18),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


class TransactionDetail extends StatelessWidget {
  final Map<String, String> transaction;

  TransactionDetail({required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDetailItem('Date', transaction['date']!),
            _buildDetailItem('Amount', transaction['amount']!),
            _buildDetailItem('Description', transaction['description']!),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailItem(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        SizedBox(height: 5),
        Hero(
          tag: label, // Unique tag for Hero animation
          child: Material(
            type: MaterialType.transparency,
            child: Text(
              value,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
