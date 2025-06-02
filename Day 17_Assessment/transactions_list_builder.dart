import 'package:flutter/material.dart';
import 'transactions.dart';

void main() {
  runApp(MyBankApp());
}

class MyBankApp extends StatelessWidget {
  const MyBankApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TransactionPage(),
    );
  }
}

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(

        title: Text(
          "Transaction History",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          itemCount: trans.length,
          separatorBuilder: (context, index) => SizedBox(height: 12),
          itemBuilder: (context, index) {
            return getTransactionTile(context, index);
          },
        ),
      ),
    );
  }

  Widget getTransactionTile(BuildContext context, int index) {
    final txn = trans[index];
    final isCredit = txn.type == "Credit";

    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        contentPadding: EdgeInsets.all(12),
        leading: CircleAvatar(
          child: Image.asset(trans[index].image),
          //backgroundImage: AssetImage(trans[index].image),
          radius: 28,
        ),

        title: Text(
          txn.recipient,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          txn.date,
          style: TextStyle(fontSize: 14, color: Colors.grey[600]),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${isCredit ? "+" : "-"} ₹${txn.amount}",
              style: TextStyle(
                color: isCredit ? Colors.green : Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              txn.type,
              style: TextStyle(
                color: isCredit ? Colors.green : Colors.red,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
