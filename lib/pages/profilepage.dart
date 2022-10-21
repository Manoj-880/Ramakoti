import 'package:flutter/material.dart';
import 'package:ramkoti/Sections/drawer.dart';
import 'package:ramkoti/pages/accounts_info.dart';
import 'package:ramkoti/pages/my_rewards_page.dart';
import 'package:ramkoti/pages/ramakoti_settings_page.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: sideDrawer(
        selectedindex: 2,
      ),
      appBar: AppBar(
        toolbarHeight: size.height * 0.1,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: const Color(0xffDA3301),
        title: const Text(
          'My Profile',
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
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 100,
                decoration: const BoxDecoration(
                  color: Color(0xffDA3301),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: -75,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(200)),
                  elevation: 2,
                  // ignore: prefer_const_constructors
                  child: CircleAvatar(
                    radius: 70,
                    // ignore: sort_child_properties_last
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 120,
                    ),

                    backgroundColor: Colors.grey,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          const Text(
            'Name',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            '@Mail',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Color(0xffDA3301),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.redAccent, //color of divider
            height: 5, //height spacing of divider
            thickness: 3, //thickness of divier line
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              // ignore: avoid_print
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AccountInformation()),
              );
              Feedback.forTap(context);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Icon(
                    Icons.account_circle_outlined,
                    size: 40,
                    color: Colors.black54,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Accounts Information',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.black54),
                  ),
                ],
              ),
            ),
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              // ignore: avoid_print
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const RamakotiSettings()),
              );
              Feedback.forTap(context);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Icon(
                    Icons.tune,
                    size: 40,
                    color: Colors.black54,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Ramakoti Settings',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.black54),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 150,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            // ignore: sort_child_properties_last
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    // ignore: avoid_print
                    print('My Score');
                  },
                  child: const Text(
                    'My Score',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0xffDA3301),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            // ignore: sort_child_properties_last
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    // ignore: avoid_print
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyRewards()),
                    );
                  },
                  child: const Text(
                    'My Rewards',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0xffDA3301),
            ),
          ),
        ],
      ),
    );
  }
}
