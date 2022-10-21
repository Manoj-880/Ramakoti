import 'package:flutter/material.dart';
import 'package:ramkoti/Sections/rewards_earned_model.dart';

import '../Sections/drawer.dart';
import '../Sections/popup_dailog.dart';

class MyRewards extends StatefulWidget {
  const MyRewards({super.key});

  @override
  State<MyRewards> createState() => _MyRewardsState();
}

class _MyRewardsState extends State<MyRewards> {
  bool earned = true;
  bool redeemed = false;
  bool unredeemed = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: sideDrawer(selectedindex: 5),
      appBar: AppBar(
        toolbarHeight: size.height * 0.1,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: const Color(0xffDA3301),
        title: const Text(
          'My Rewards',
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
                bottom: -140,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  earned = true;
                                  redeemed = false;
                                  unredeemed = false;
                                });
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(200)),
                                elevation: 2,
                                // ignore: prefer_const_constructors
                                child: CircleAvatar(
                                  radius: 50,
                                  // ignore: sort_child_properties_last
                                  child: ClipOval(
                                      child: Image.asset(
                                          'assets/images/rewards_Earned.png')),

                                  backgroundColor: Colors.white,
                                ),
                              ),
                            ),
                            const Text(
                              'Earned',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              '2',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  redeemed = !redeemed;
                                  redeemed = true;
                                  earned = false;
                                  unredeemed = false;
                                });
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(200)),
                                elevation: 2,
                                // ignore: prefer_const_constructors
                                child: CircleAvatar(
                                  radius: 50,
                                  // ignore: sort_child_properties_last
                                  child: ClipOval(
                                      child: Image.asset(
                                          'assets/images/rewards_Redeemed.png')),

                                  backgroundColor: Colors.white,
                                ),
                              ),
                            ),
                            const Text(
                              'Redeemed',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              '0',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(200)),
                              elevation: 2,
                              // ignore: prefer_const_constructors
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    earned = false;
                                    redeemed = false;
                                    unredeemed = true;
                                  });
                                },
                                child: CircleAvatar(
                                  radius: 50,
                                  // ignore: sort_child_properties_last
                                  child: ClipOval(
                                      child: Image.asset(
                                          'assets/images/rewards_unredeemed.png')),

                                  backgroundColor: Colors.white,
                                ),
                              ),
                            ),
                            const Text(
                              'Unredeemed',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              '2',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Rewards will be updated at the end of the day (IST)',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 150,
          ),
          const Divider(
            color: Color(0xffDA3301), //color of divider
            height: 5, //height spacing of divider
            thickness: 2, //thickness of divier line
          ),
          if (earned == true)
            earn(context, size)
          else if (redeemed == true)
            redeem(context, size)
          else
            const Text('no data')
        ],
      ),
    );
  }
}

Widget earn(BuildContext context, size) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              'Rewards Earned',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'History',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Color(0xffDA3301)),
                  ),
                  IconButton(
                      onPressed: () {
                        // ignore: avoid_print
                        print('Filter clicked');
                      },
                      icon: const Icon(
                        Icons.filter_alt,
                        size: 30,
                        color: Color(0xffDA3301),
                      ))
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.only(left: 20),
          height: size.height * 0.45,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          width: size.width * 0.24,
                          alignment: Alignment.center,
                          child: const Text(
                            'Date',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                          width: size.width * 0.23,
                          alignment: Alignment.center,
                          child: const Text(
                            'Score',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                          width: size.width * 0.23,
                          alignment: Alignment.center,
                          child: const Text(
                            'Reward Points',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    width: size.width * 0.1,
                    child: IconButton(
                      onPressed: () {
                        // ignore: avoid_print
                        showDialog(
                            context: context,
                            builder: (context) =>
                                LeaderboardDialog(size: size));
                      },
                      icon: Image.asset('assets/images/i_button.png'),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: rewardsmodelData.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin:
                          EdgeInsets.only(right: size.width * 0.08, bottom: 10),
                      padding: EdgeInsets.only(
                          top: 20, bottom: 20, right: size.width * 0.05),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffdddddd),
                            offset: Offset(0, 3),
                            blurRadius: 1,
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Container(
                            width: size.width * 0.23,
                            alignment: Alignment.center,
                            child: Text(
                              rewardsmodelData[index].date,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                          ),
                          Container(
                            width: size.width * 0.23,
                            alignment: Alignment.center,
                            child: Text(
                              rewardsmodelData[index].score,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                          ),
                          Container(
                            width: size.width * 0.23,
                            alignment: Alignment.center,
                            child: Text(
                              rewardsmodelData[index].rewards,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}

Widget redeem(BuildContext context, size) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              'Rewards Redeemed',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'History',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Color(0xffDA3301)),
                  ),
                  IconButton(
                      onPressed: () {
                        // ignore: avoid_print
                        print('Filter clicked');
                      },
                      icon: const Icon(
                        Icons.filter_alt,
                        size: 30,
                        color: Color(0xffDA3301),
                      ))
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
            padding: const EdgeInsets.only(left: 20),
            height: size.height * 0.45,
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          width: size.width * 0.24,
                          alignment: Alignment.center,
                          child: const Text(
                            'Date',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                          width: size.width * 0.23,
                          alignment: Alignment.center,
                          child: const Text(
                            'Score',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                          width: size.width * 0.23,
                          alignment: Alignment.center,
                          child: const Text(
                            'Reward Points',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    width: size.width * 0.1,
                    child: IconButton(
                      onPressed: () {
                        // ignore: avoid_print
                        showDialog(
                            context: context,
                            builder: (context) =>
                                LeaderboardDialog(size: size));
                      },
                      icon: Image.asset('assets/images/i_button.png'),
                    ),
                  ),
                ],
              )
            ]))
      ],
    ),
  );
}
