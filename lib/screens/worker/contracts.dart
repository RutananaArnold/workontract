import 'package:flutter/material.dart';

class AvailableContracts extends StatefulWidget {
  const AvailableContracts({super.key});

  @override
  State<AvailableContracts> createState() => _AvailableContractsState();
}

class _AvailableContractsState extends State<AvailableContracts> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("No contracts yet"),
      ),
    );
  }
}
