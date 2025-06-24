import 'package:flutter/material.dart';

void main() {
  runApp(BankProfileApp());
}

class BankProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SBI Profile',
      debugShowCheckedModeBanner: false,
      home: BankProfilePage(),
    );
  }
}

class BankProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Masked account number written directly
    //String maskedAccountNumber = "XXXX XXXX 9101";

    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        title: Text("My Profile"),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(height: 40),

          // Profile Picture
          CircleAvatar(
            radius: 60,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage("assets/images/archana.jpg"),
            ),
          ),

          SizedBox(height: 20),

          // Profile Info Card
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    ProfileItem(label: "Name", value: "Archana V"),
                    Divider(),
                    ProfileItem(label: "Account Number", value: 'XXXX XXXX 9101'),
                    Divider(),
                    ProfileItem(label: "Branch", value: "Coimbatore - TN"),
                    Divider(),
                    ProfileItem(label: "Available Balance", value: "₹50,000"),
                    Divider(),
                    ProfileItem(label: "Email", value: "archana@example.com"),
                    Divider(),
                    ProfileItem(label: "Mobile", value: "+91 98765 43210"),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  final String label;
  final String value;

  ProfileItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey[800],
              fontWeight: FontWeight.w500,
            ),
          ),
          Flexible(
            child: Text(
              value,
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
