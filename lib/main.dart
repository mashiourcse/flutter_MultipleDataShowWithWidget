import 'package:flutter/material.dart';
import './transaction.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'New Pants', amount: 99.99, date: DateTime.now()),
    Transaction(
        id: 't3', title: 'New Shirts', amount: 199.99, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hello World"),
        ),
        body: Container(
          child: Column(
              children: transactions.map((e) {
            return Card(
              child: Text(e.title),
            );
          }).toList()),
        ));
  }
}
