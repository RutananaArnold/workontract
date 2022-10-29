import 'package:flutter/material.dart';
import 'package:workontract/screens/worker/contracts.dart';
import 'package:workontract/screens/worker/workers_notifications.dart';
import 'package:workontract/widgets/drawer_tile.dart';

import '../../constants/color_pallete.dart';
import '../welcome.dart';
import 'worker_dashboard.dart';

class Index extends StatefulWidget {
  int currentIndex;
  Index({
    super.key,
    this.currentIndex = 0,
  });

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  final GlobalKey<ScaffoldState> drawerkey = GlobalKey();
  void openCloseDrawer() {
    drawerkey.currentState!.isDrawerOpen
        ? Navigator.pop(context)
        : drawerkey.currentState?.openDrawer();
  }

  List<Widget> tabs = const [
    WorkerDashboard(),
    WorkerNotifications(),
    AvailableContracts(),
  ];

  List<Widget>? appBarItems = [
    Container(),
    const SizedBox(
        child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "Notifications",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    )),
    const SizedBox(
        child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "contracts",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    )),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerkey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            openCloseDrawer();
          },
          icon: const Icon(Icons.menu),
          color: Colors.black,
        ),
        backgroundColor: appBarColor,
        elevation: 0,
        actions: [
          Row(
            children: [appBarItems![widget.currentIndex]],
          )
        ],
      ),
      drawer: SizedBox(
        width: 180,
        child: Drawer(
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(),
                  accountName: Text("name"),
                  accountEmail: Text("email")),
              DrawerListTile(
                  title: "Dashboard",
                  svgSrc: Icons.home,
                  press: () {
                    setState(() {
                      widget.currentIndex = 0;
                    });
                    openCloseDrawer();
                  }),
              DrawerListTile(
                  title: "Notifications",
                  svgSrc: Icons.sell,
                  press: () {
                    setState(() {
                      widget.currentIndex = 1;
                    });
                    openCloseDrawer();
                  }),
              DrawerListTile(
                  title: "Contracts",
                  svgSrc: Icons.mark_email_read,
                  press: () {
                    setState(() {
                      widget.currentIndex = 2;
                    });
                    openCloseDrawer();
                  }),
              DrawerListTile(
                  title: "Logout",
                  svgSrc: Icons.outbond,
                  press: () {
                    openCloseDrawer();
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: const Text(
                                "Are you sure you want to log out? "),
                            actions: [
                              InkWell(
                                child: const Text(
                                  "YES",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                onTap: () {
                                  Navigator.of(context).pushAndRemoveUntil(
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              const Welcome()),
                                      (route) => false);
                                },
                              ),
                              const SizedBox(height: 50),
                              InkWell(
                                child: const Text(
                                  "CANCEL",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          );
                        });
                  })
            ],
          ),
        ),
      ),
      body: tabs[widget.currentIndex],
    );
  }
}
