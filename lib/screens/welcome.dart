import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:workontract/screens/employer/registration.dart';
import 'package:workontract/screens/worker/worker_registration.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.transparent, elevation: 0, actions: [
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const WorkerRegistration()),
                  (route) => true);
            },
            child: const Text("Worker")),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                      builder: (BuildContext context) => const Registration()),
                  (route) => true);
            },
            child: const Text("Employer"))
      ]),
      body: Center(
          child: Column(
        children: const [
          SizedBox(
            height: 250,
          ),
          Center(
            child: GlowText(
              "WORKONTRACT!!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 5),
            ),
          ),
        ],
      )),
    );
  }
}
