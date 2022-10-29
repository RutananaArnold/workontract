import 'package:flutter/material.dart';

import 'available_workers.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80,
              width: 400,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Current employees: 4",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const AvailableEmployees()),
                              (route) => true);
                        },
                        child: const Text("HIRE NEW"))
                  ]),
            ),
            DataTable(columns: createColumns(), rows: createRows())
          ],
        ),
      ),
    );
  }

  List<DataColumn> createColumns() {
    return const [
      DataColumn(label: Text('Name')),
      DataColumn(label: Text('Start')),
      DataColumn(label: Text('End')),
      DataColumn(label: Text('Category'))
    ];
  }

  List<DataRow> createRows() {
    return const [
      DataRow(cells: [
        DataCell(Text('Joseph')),
        DataCell(Text('June 2022')),
        DataCell(Text('December 2022')),
        DataCell(Text('Painter'))
      ]),
    ];
  }
}
