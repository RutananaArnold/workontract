import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:workontract/screens/worker/index.dart';

import '../../widgets/rounded_button.dart';
import '../../widgets/rounded_input.dart';
import '../../widgets/text_field_container.dart';

class WorkerRegistration extends StatefulWidget {
  const WorkerRegistration({super.key});

  @override
  State<WorkerRegistration> createState() => _WorkerRegistrationState();
}

class _WorkerRegistrationState extends State<WorkerRegistration> {
  // Initial Selected Value
  String dropdownvalue = 'House Maid';

  // List of items in our dropdown menu
  var items = [
    'House Maid',
    'Architect',
    'Plumber',
    'Developer',
    'Java Dev',
    'Flutter Dev',
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Registration",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          RoundedInput(
            label: "Name",
            hint: "Enter name",
            icon: Icons.label,
            onChanged: (String value) {},
          ),
          RoundedInput(
            label: "NIN",
            hint: "Enter NIN",
            icon: Icons.location_on,
            onChanged: (String value) {},
          ),
          TextFieldContainer(
            child: DropdownButton(
              // Initial Value
              value: dropdownvalue,

              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ),
          SizedBox(height: size.height * 0.02),
          DottedBorder(
            padding: const EdgeInsets.all(10),
            color: Colors.black,
            strokeWidth: 0.8,
            child: SizedBox(
              width: size.width * 0.7,
              child: const Icon(Icons.file_copy),
            ),
          ),
          SizedBox(height: size.height * 0.01),
          ElevatedButton(onPressed: () {}, child: const Text("Select file")),
          RoundedButton(
              text: "Register",
              press: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (BuildContext context) => Index()),
                    (route) => true);
              },
              color: Colors.green)
        ],
      ),
    );
  }
}
