import 'package:flutter/material.dart';
import 'package:workontract/screens/employer/index.dart';
import 'package:workontract/widgets/rounded_button.dart';
import 'package:workontract/widgets/rounded_input.dart';
import 'package:dotted_border/dotted_border.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
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
            label: "Location",
            hint: "Enter location",
            icon: Icons.location_on,
            onChanged: (String value) {},
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
