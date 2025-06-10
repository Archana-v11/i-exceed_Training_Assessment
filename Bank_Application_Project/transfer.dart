import 'package:flutter/material.dart';
import 'success.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FundTransferPage(),
  ));
}

class FundTransferPage extends StatefulWidget {
  @override
  _FundTransferPageState createState() => _FundTransferPageState();
}

class _FundTransferPageState extends State<FundTransferPage> {
  bool isWithinCanara = true;

  final _accountController = TextEditingController();
  final _reEnterAccountController = TextEditingController();
  final _beneficiaryNameController = TextEditingController();
  final _nickNameController = TextEditingController();
  final _ifscController = TextEditingController();
  final _amountController = TextEditingController();

  final List<String> _banks = [
    'HDFC Bank',
    'ICICI Bank',
    'State Bank of India',
    'Axis Bank',
    'Kotak Mahindra Bank',
    'Punjab National Bank',
    'Yes Bank',
    'Bank of Baroda',
    'IDFC First Bank',
  ];

  String? _selectedBank;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Text(
          "Send Money",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 30, 60, 100),
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(height: 10),

          // Toggle Tabs
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(253, 205, 213, 214),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  buildTab("Within Same Bank", isWithinCanara, () {
                    setState(() => isWithinCanara = true);
                  }),
                  buildTab("Other Bank", !isWithinCanara, () {
                    setState(() => isWithinCanara = false);
                  }),
                ],
              ),
            ),
          ),

          SizedBox(height: 15),

          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Card(
                elevation: 8,
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                color: Color.fromARGB(255, 241, 246, 248),
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      buildInputField("Account Number", _accountController,
                          Icons.account_balance_wallet),
                      buildInputField("Re-enter Account Number",
                          _reEnterAccountController, Icons.repeat),

                      if (!isWithinCanara) ...[
                        buildBankDropdown(),
                        buildInputField("IFSC Code", _ifscController, Icons.qr_code),
                      ],

                      buildInputField(
                          "Beneficiary Name", _beneficiaryNameController, Icons.person),
                      buildInputField("Nick Name", _nickNameController, Icons.edit_note),

                      buildInputField("Amount", _amountController, Icons.currency_rupee),

                      SizedBox(height: 30),

                      ElevatedButton(
                        onPressed: () {
                          if (_validateInputs()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => TransferSuccessPage(
                                  amount: _amountController.text.trim(),
                                  beneficiary: _beneficiaryNameController.text.trim(),
                                  accountNumber: _accountController.text.trim(),
                                  transferType:
                                  isWithinCanara ? "Within Same Bank" : "Other Bank",
                                  outsideBank: isWithinCanara ? null : _selectedBank,
                                ),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Please fill all required fields correctly."),
                                backgroundColor:
                                Color.fromARGB(255, 30, 60, 100),
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 30, 60, 100),
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        child: Text(
                          "Confirm",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool _validateInputs() {
    if (_accountController.text.trim().isEmpty ||
        _reEnterAccountController.text.trim().isEmpty ||
        _beneficiaryNameController.text.trim().isEmpty ||
        _nickNameController.text.trim().isEmpty ||
        _amountController.text.trim().isEmpty) {
      return false;
    }

    if (_accountController.text.trim() != _reEnterAccountController.text.trim()) {
      return false;
    }

    if (!isWithinCanara) {
      if (_ifscController.text.trim().isEmpty || _selectedBank == null) {
        return false;
      }
    }

    return true;
  }

  Widget buildInputField(String label, TextEditingController controller, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        controller: controller,
        keyboardType: label == "Amount" ? TextInputType.number : TextInputType.text,
        style: TextStyle(
          fontSize: 16,
          color: Color.fromARGB(255, 20, 40, 80),
        ),
        cursorColor: Color.fromARGB(255, 30, 60, 100),
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Color.fromARGB(255, 20, 40, 80)),
          labelText: label,
          labelStyle: TextStyle(
            fontSize: 16,
            color: Color.fromARGB(255, 20, 40, 80),
          ),
          filled: true,
          fillColor: Color.fromARGB(253, 205, 213, 214),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Color.fromARGB(255, 30, 60, 100),
              width: 2,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBankDropdown() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_balance, color: Color.fromARGB(255, 20, 40, 80)),
          labelText: "Select Bank",
          labelStyle: TextStyle(
            fontSize: 16,
            color: Color.fromARGB(255, 20, 40, 80),
          ),
          filled: true,
          fillColor: Color.fromARGB(253, 205, 213, 214),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        ),
        value: _selectedBank,
        items: _banks.map((bank) {
          return DropdownMenuItem<String>(
            value: bank,
            child: Text(bank,
                style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 20, 40, 80))),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            _selectedBank = value;
          });
        },
      ),
    );
  }

  Widget buildTab(String label, bool isSelected, VoidCallback onTap) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: isSelected ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(30),
            boxShadow: isSelected
                ? [BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(0, 2))]
                : [],
          ),
          alignment: Alignment.center,
          child: Text(
            label,
            style: TextStyle(
              fontSize: 16,
              color: isSelected
                  ? Color.fromARGB(255, 20, 40, 80)
                  : Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
