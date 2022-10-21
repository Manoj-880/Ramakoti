import 'package:flutter/material.dart';

import '../Sections/drawer.dart';

class WritingPad extends StatefulWidget {
  const WritingPad({super.key});

  @override
  State<WritingPad> createState() => _WritingPadState();
}

class _WritingPadState extends State<WritingPad> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: sideDrawer(selectedindex: 3),
      appBar: AppBar(
        toolbarHeight: size.height * 0.1,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: const Color(0xffDA3301),
        title: const Text(
          'Writing Pad',
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
        child: Text('Writing Pad'),
      ),
    );
  }
}
