import 'package:flutter/material.dart';

class ContractHistory extends StatefulWidget {
  const ContractHistory({super.key});

  @override
  State<ContractHistory> createState() => _ContractHistoryState();
}

class _ContractHistoryState extends State<ContractHistory> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("No Contracts found"),
      ),
    );
  }
}
