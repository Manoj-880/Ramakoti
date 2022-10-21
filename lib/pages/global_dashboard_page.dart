import 'package:flutter/material.dart';

import '../Sections/drawer.dart';

class GlobalDashboard extends StatefulWidget {
  const GlobalDashboard({super.key});

  @override
  State<GlobalDashboard> createState() => _GlobalDashboardState();
}

class _GlobalDashboardState extends State<GlobalDashboard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: sideDrawer(
        selectedindex: 6,
      ),
      appBar: AppBar(
        toolbarHeight: size.height * 0.1,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: const Color(0xffDA3301),
        title: const Text(
          'Global Dashboard',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        leading: SizedBox(
          width: 200,
          height: 200,
          child: Builder(builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              padding: const EdgeInsets.all(0.0),
              icon: Image.asset(
                'assets/images/logo.png',
                height: 40.0,
                width: 40.0,
              ),
            );
          }),
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            onPressed: () {
              // ignore: avoid_print
              print('Navigate to Global dashboard');
            },
            icon: const Icon(
              Icons.leaderboard,
              size: 30,
            ),
            color: Colors.white,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          IconButton(
            padding: const EdgeInsets.only(right: 20),
            onPressed: () {
              // ignore: avoid_print
              print('share');
            },
            icon: const Icon(
              Icons.share,
              size: 30,
            ),
            color: Colors.white,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              'Global Rama Koti Count',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              '7,574,596',
              style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              color: Color(0xffDA3301), //color of divider
              height: 5, //height spacing of divider
              thickness: 1, //thickness of divier line
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Users Contributed',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              '2,190',
              style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
