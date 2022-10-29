import 'package:flutter/material.dart';
import 'package:workontract/screens/employer/contract.dart';
import 'package:workontract/widgets/rounded_input.dart';
import 'package:workontract/widgets/text_area.dart';

class EmployeeProfile extends StatefulWidget {
  const EmployeeProfile({super.key});

  @override
  State<EmployeeProfile> createState() => _EmployeeProfileState();
}

class _EmployeeProfileState extends State<EmployeeProfile> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        elevation: 0,
        title: const Text(
          "Employee's Profile",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child: Card(
              elevation: 290,
              child: Column(
                children: [
                  ListTile(
                    leading: const SizedBox(
                      height: 200,
                      width: 100,
                      child: CircleAvatar(
                        child: Icon(Icons.person),
                      ),
                    ),
                    title: Wrap(
                      direction: Axis.vertical,
                      children: const [
                        Text(
                          "Name: ",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Age: ",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    subtitle: Wrap(
                      direction: Axis.vertical,
                      children: const [
                        Text(
                          "Experience: ",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Category: ",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  const Text(
                    "Details",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "About: ",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Hobbies: ",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Address: ",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  content: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        const RoundedInput(
                                            label: "Duration",
                                            hint: "Duration",
                                            icon: Icons.timelapse),
                                        const RoundedInput(
                                            label: "Start Date",
                                            hint: "Start Date",
                                            icon: Icons.timelapse),
                                        const RoundedInput(
                                            label: "End Date",
                                            hint: "End Date",
                                            icon: Icons.timelapse),
                                        TextArea(
                                            label: "Enter Specifics",
                                            onChanged: (String value) {})
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    ElevatedButton.icon(
                                      onPressed: () {
                                        showModalBottomSheet(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return SingleChildScrollView(
                                                child: Column(
                                                  children: [
                                                    const Text(
                                                      "Estimated Price:  ..........",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height:
                                                          size.height * 0.02,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                          height:
                                                              size.width * 0.02,
                                                        ),
                                                        ElevatedButton(
                                                          onPressed: () {},
                                                          child: const Text(
                                                              "Accept"),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              size.width * 0.02,
                                                        ),
                                                        ElevatedButton(
                                                          onPressed: () {},
                                                          child: const Text(
                                                              "Negotiate"),
                                                        ),
                                                      ],
                                                    ),
                                                    const RoundedInput(
                                                        label:
                                                            "Propose New Price",
                                                        hint:
                                                            "Enter proposed price",
                                                        icon: Icons
                                                            .monetization_on),
                                                    const Text(
                                                      "Final Price:  ..........",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height:
                                                          size.height * 0.02,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                          height:
                                                              size.width * 0.02,
                                                        ),
                                                        ElevatedButton(
                                                          onPressed: () {},
                                                          child: const Text(
                                                              "REJECT"),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              size.width * 0.02,
                                                        ),
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            Navigator
                                                                    .of(context)
                                                                .pushAndRemoveUntil(
                                                                    MaterialPageRoute(
                                                                        builder:
                                                                            (BuildContext context) =>
                                                                                const Contract()),
                                                                    (route) =>
                                                                        true);
                                                          },
                                                          child: const Text(
                                                              "ACCEPT"),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              );
                                            });
                                      },
                                      icon: const Icon(Icons.file_copy),
                                      label: const Text(
                                        "Contract",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    )
                                  ],
                                );
                              });
                        },
                        child: const Text("Hire")),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
