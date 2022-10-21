import 'package:flutter/material.dart';
import 'package:ramkoti/Sections/drawer.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  // ignore: unused_field
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: sideDrawer(selectedindex: 1),
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: const Color(0xffDA3301),
        title: const Text(
          'About RamaKoti',
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
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          // ignore: prefer_const_constructors
          children: const [
            SizedBox(
              height: 40,
            ),
            Text(
              'RamaKoti is a digital platform fo rusers to mediate to the name Sri Rama, the central character of the greate epic',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.black54),
            ),
            Text(
              'Ramayana. this is an alternative to the age-old tradition of writing Sri Rama namam in RamaKoti books in their preferred language.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.black54),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'No other meditation act traditionally passed down in the Hindu way of life could be simpler to elevate oneself spiritually.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'For more information visit our page:',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.black54),
            ),
            Image(
              image: AssetImage('assets/images/logo.png'),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Pramanam.org',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  decoration: TextDecoration.underline),
            )
          ],
        ),
      ),
    );
  }
}
