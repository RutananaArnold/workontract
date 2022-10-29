import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:workontract/screens/employer/index.dart';

class Contract extends StatefulWidget {
  const Contract({super.key});

  @override
  State<Contract> createState() => _ContractState();
}

class _ContractState extends State<Contract> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        backgroundColor: Colors.blue[50],
        elevation: 0,
      ),
      body: ListView(
        children: const [
          Center(
              child: Text(
            "Contract template here",
          )),
        ],
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.add_event,
        overlayColor: Colors.black,
        overlayOpacity: 0.4,
        children: [
          SpeedDialChild(
              child: const Icon(Icons.check),
              label: "Confirm",
              backgroundColor: Colors.red,
              onTap: () {}),
          SpeedDialChild(
              child: const Icon(Icons.cancel),
              label: "Reject",
              backgroundColor: Colors.green,
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: ((context) => Index())),
                    (route) => true);
              }),
        ],
      ),
    );
  }
}
