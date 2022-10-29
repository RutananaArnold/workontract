import 'package:flutter/material.dart';

class WorkerNotifications extends StatefulWidget {
  const WorkerNotifications({super.key});

  @override
  State<WorkerNotifications> createState() => _WorkerNotificationsState();
}

class _WorkerNotificationsState extends State<WorkerNotifications> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("No notifications"),
      ),
    );
  }
}