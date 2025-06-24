import 'package:flutter/material.dart';

void main() {
  runApp(BankDashboardApp());
}

class BankDashboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: BankDashboardPage(),
    );
  }
}

class BankDashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              // Welcome Text
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Welcome, Archana 👋",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Account Summary Card
              Card(
                elevation: 6,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Account Balance", style: TextStyle(fontSize: 16, color: Colors.grey[600])),
                      SizedBox(height: 8),
                      Text(
                        "₹50,000",
                        style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.green[700]),
                      ),
                      SizedBox(height: 10),
                      Text("Account No: XXXX XXXX 9101", style: TextStyle(fontSize: 14)),
                      Text("Branch: Coimbatore - TN", style: TextStyle(fontSize: 14)),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 25),

              // Quick Actions
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildActionButton(Icons.send, "Transfer"),
                  _buildActionButton(Icons.account_balance_wallet, "Deposit"),
                  _buildActionButton(Icons.money_off, "Withdraw"),
                ],
              ),

              SizedBox(height: 30),

              // Recent Transactions
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Recent Transactions",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),

              _buildTransactionTile("Transfer to Akash", "- ₹2,000", "Jun 1, 2025", Icons.arrow_upward, Colors.red),
              _buildTransactionTile("Deposit - Self", "+ ₹5,000", "May 30, 2025", Icons.arrow_downward, Colors.green),
              _buildTransactionTile("ATM Withdrawal", "- ₹1,000", "May 28, 2025", Icons.money_off, Colors.orange),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.indigo[100],
          radius: 28,
          child: Icon(icon, color: Colors.indigo[900]),
        ),
        SizedBox(height: 8),
        Text(label),
      ],
    );
  }

  Widget _buildTransactionTile(String title, String amount, String date, IconData icon, Color color) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color.withOpacity(0.1),
          child: Icon(icon, color: color),
        ),
        title: Text(title),
        subtitle: Text(date),
        trailing: Text(
          amount,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
      ),
    );
  }
}




// import 'dart:ui';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(BankDashboard());
// }
//
// class BankDashboard extends StatelessWidget {
//   const BankDashboard({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Unique Bank UI',
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.teal,
//           title: Text("MyBank Dashboard"),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Blurred balance card
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(20),
//                 child: BackdropFilter(
//                   filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
//                   child: Container(
//                     width: double.infinity,
//                     padding: EdgeInsets.all(20),
//                     decoration: BoxDecoration(
//                       color: Colors.white.withOpacity(0.15),
//                       borderRadius: BorderRadius.circular(20),
//                       border: Border.all(color: Colors.teal.withOpacity(0.2)),
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text("Total Balance", style: TextStyle(color: Colors.grey[200])),
//                         SizedBox(height: 10),
//                         Text("₹45,230.50",
//                             style: TextStyle(
//                                 fontSize: 28,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white)),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//
//               // Category Chips
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     _buildChip("All", isSelected: true),
//                     _buildChip("Income"),
//                     _buildChip("Expense"),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 10),
//
//               // Recent Transactions Horizontal
//               Text("Recent Transactions", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//               SizedBox(height: 10),
//               SizedBox(
//                 height: 140,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   children: [
//                     _buildTransactionCard("Amazon", "-₹899", Icons.shopping_cart, Colors.red),
//                     _buildTransactionCard("Salary", "+₹18,000", Icons.attach_money, Colors.green),
//                     _buildTransactionCard("Electricity", "-₹1,500", Icons.flash_on, Colors.orange),
//                     _buildTransactionCard("Food", "-₹350", Icons.restaurant, Colors.deepPurple),
//                   ],
//                 ),
//               ),
//
//               Spacer(),
//
//               // Summary bottom card
//               Card(
//                 elevation: 5,
//                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//                 child: Padding(
//                   padding: const EdgeInsets.all(20.0),
//                   child: Row(
//                     children: [
//                       Icon(Icons.pie_chart_outline, color: Colors.teal),
//                       SizedBox(width: 15),
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text("Monthly Spend Limit",
//                                 style: TextStyle(fontWeight: FontWeight.bold)),
//                             Text("You’ve spent 82% of your budget."),
//                           ],
//                         ),
//                       ),
//                       Icon(Icons.arrow_forward_ios, size: 18, color: Colors.grey),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         backgroundColor: Colors.teal[800],
//       ),
//     );
//   }
//
//   Widget _buildTransactionCard(
//       String title, String amount, IconData icon, Color iconColor) {
//     return Container(
//       width: 160,
//       margin: EdgeInsets.only(right: 15),
//       padding: EdgeInsets.all(15),
//       decoration: BoxDecoration(
//         color: Colors.white.withOpacity(0.9),
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(icon, size: 32, color: iconColor),
//           SizedBox(height: 10),
//           Text(title, style: TextStyle(fontWeight: FontWeight.w600)),
//           SizedBox(height: 5),
//           Text(amount, style: TextStyle(fontSize: 18, color: Colors.black)),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildChip(String label, {bool isSelected = false}) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 10.0),
//       child: Chip(
//         label: Text(label),
//         backgroundColor: isSelected ? Colors.teal : Colors.grey[300],
//         labelStyle: TextStyle(
//             color: isSelected ? Colors.white : Colors.black),
//         padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//       ),
//     );
//   }
// }
