class Transaction {
  String recipient;
  String type; // "Credit" or "Debit"
  double amount;
  String date;
  String image;

  Transaction({
    required this.recipient,
    required this.type,
    required this.amount,
    required this.date,
    required this.image,
  });
}

List<Transaction> trans = [
  Transaction(
    recipient: "Amazon",
    type: "Debit",
    amount: 1250.75,
    date: "2024-05-10",
    image: "assets/transactions/shopping.png",
  ),
  Transaction(
    recipient: "Salary",
    type: "Credit",
    amount: 50000.00,
    date: "2024-05-01",
    image: "assets/transactions/salary.png",
  ),
  Transaction(
    recipient: "Electricity Bill",
    type: "Debit",
    amount: 1850.25,
    date: "2024-04-28",
    image: "assets/transactions/bill.png",
  ),
  Transaction(
    recipient: "Google Play Refund",
    type: "Credit",
    amount: 299.00,
    date: "2024-04-25",
    image: "assets/transactions/refund.png",
  ),
  Transaction(
    recipient: "Gym Membership",
    type: "Debit",
    amount: 2000.00,
    date: "2024-04-30",
    image: "assets/transactions/fitness.png",
  ),
  Transaction(
    recipient: "Flipkart",
    type: "Debit",
    amount: 999.00,
    date: "2024-04-20",
    image: "assets/transactions/shopping.png",
  ),
];
