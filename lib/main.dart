import 'package:flutter/material.dart';

import './widgets/user_transactions.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expense Manager'),
        ),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Card(
                  child: Text('Charts'),
                  elevation: 5,
                ),
              ),
              UserTransactions(),
            ],
          ),
        ),
      ),
    );
  }
}
