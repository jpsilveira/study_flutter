import 'dart:math';

import 'package:flutter/material.dart';

import '../models/transaction.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: "t1",
      title: "Tênis",
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "Conta de Luz1",
      value: 1011.31,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t3",
      title: "Conta de Luz2",
      value: 1011.31,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t4",
      title: "Conta de Luz3",
      value: 1011.31,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t5",
      title: "Conta de Luz4",
      value: 1011.31,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t6",
      title: "Conta de Luz5",
      value: 1011.31,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t7",
      title: "Conta de Luz6",
      value: 1011.31,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t8",
      title: "Conta de Luz7",
      value: 1011.31,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
        id: Random().nextDouble.toString(),
        title: title,
        value: value,
        date: DateTime.now());

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TransactionForm(_addTransaction),
      TransactionList(_transactions),
    ]);
  }
}
