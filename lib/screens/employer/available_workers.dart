import 'package:flutter/material.dart';
import 'package:workontract/widgets/rounded_input.dart';

import 'employee_profile.dart';

class AvailableEmployees extends StatefulWidget {
  const AvailableEmployees({super.key});

  @override
  State<AvailableEmployees> createState() => _AvailableEmployeesState();
}

class _AvailableEmployeesState extends State<AvailableEmployees> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.blue[50],
        centerTitle: true,
        title: const Text(
          "Hire New",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const RoundedInput(
                label: "Search",
                hint: "Search by catergory",
                icon: Icons.search),
            SizedBox(
              height: size.height * 0.02,
            ),
            const Text(
              "Available Employees",
            ),
            Card(
              elevation: 200,
              child: ListTile(
                leading: const CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: const Text("Joseph M"),
                subtitle: const Text("Category"),
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const EmployeeProfile()),
                      (route) => true);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
