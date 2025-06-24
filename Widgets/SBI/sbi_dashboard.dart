import 'package:flutter/material.dart';

void main() {
  runApp(SBIDashboardApp());
}

class SBIDashboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SBI Dashboard',
      debugShowCheckedModeBanner: false,
      home: SBIDashboardPage(),
    );
  }
}

class SBIDashboardPage extends StatelessWidget {
  const SBIDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: Row(
          children: [
            Image.network(
              'https://yt3.googleusercontent.com/NGhfS9Di_x-EquQdoHWnnCsws9C2ekE_qt5F6Cb9-Jllrecw86qwxr207V7Ffqv5bZAQYVU3e0k=s900-c-k-c0x00ffffff-no-rj',
              height: 40,
            ),
            SizedBox(width: 10),
            Text(
              "State Bank of India",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome message
            Text(
              "Welcome back, Archana 👋",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.indigo[800]),
            ),
            SizedBox(height: 20),

            // Gradient balance card
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blueAccent, Colors.lightBlueAccent],
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Available Balance", style: TextStyle(color: Colors.white70, fontSize: 16)),
                    SizedBox(height: 10),
                    Text("₹ 8,250.40", style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text("Account No: XXXX XXXX 9101", style: TextStyle(color: Colors.white70)),
                    Text("Branch: Coimbatore - TN", style: TextStyle(color: Colors.white70)),
                  ],
                ),
              ),
            ),

            SizedBox(height: 30),

            // Quick actions
            Text("Quick Actions", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _actionButton(Icons.send, "Transfer"),
                _actionButton(Icons.receipt, "Pay Bills"),
                _actionButton(Icons.account_balance_wallet, "Deposit"),
                _actionButton(Icons.credit_card, "Cards"),
              ],
            ),

            SizedBox(height: 30),

            // Recent transactions
            Text("Recent Transactions", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            _transactionTile("Zomato", "₹ -540.00", "Yesterday", Icons.fastfood, Colors.red),
            _transactionTile("Salary", "₹ +25,000.00", "2 Jun", Icons.monetization_on, Colors.green),
            _transactionTile("Electricity Bill", "₹ -1,200.00", "30 May", Icons.flash_on, Colors.orange),
            _transactionTile("Transfer to Akash", "₹ -2,000.00", "28 May", Icons.arrow_upward, Colors.red),
            _transactionTile("ATM Withdrawal", "₹ -4,000.00", "27 May", Icons.atm, Colors.deepPurple),
          ],
        ),
      ),
    );
  }

  Widget _actionButton(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.indigo[100],
          child: Icon(icon, color: Colors.indigo[800]),
        ),
        SizedBox(height: 6),
        Text(label, style: TextStyle(fontSize: 14)),
      ],
    );
  }

  Widget _transactionTile(String title, String amount, String date, IconData icon, Color iconColor) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: iconColor.withOpacity(0.15),
          child: Icon(icon, color: iconColor),
        ),
        title: Text(title),
        subtitle: Text(date),
        trailing: Text(
          amount,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: amount.contains('+') ? Colors.green : Colors.red,
          ),
        ),
      ),
    );
  }
}
