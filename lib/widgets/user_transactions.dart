import 'package:flutter/material.dart';

import '../models/transaction.dart';
import './new_transaction.dart';
import './transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(id: 't1', title: 'Shoes', amount: 6785, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Groceries', amount: 1264, date: DateTime.now()),
  ];

  void _addNewTransaction(String txnTitle, double txnAmount) {
    final newTx = new Transaction(
        id: DateTime.now().toString(),
        title: txnTitle,
        amount: txnAmount,
        date: DateTime.now());

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
