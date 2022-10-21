import 'package:flutter/material.dart';
import 'package:ramkoti/Sections/leaderboards_model.dart';
import 'package:ramkoti/pages/my_rewards_page.dart';

import '../Sections/drawer.dart';
import '../Sections/popup_dailog.dart';

class LeaderBoards extends StatefulWidget {
  const LeaderBoards({super.key});

  @override
  State<LeaderBoards> createState() => _LeaderBoardsState();
}

class _LeaderBoardsState extends State<LeaderBoards> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: sideDrawer(selectedindex: 4),
      appBar: AppBar(
        toolbarHeight: size.height * 0.1,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: const Color(0xffDA3301),
        title: const Text(
          'Leaderboard',
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
        crossAxisAlignment: CrossAxisAlignment.start,
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
            height: 10,
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(
                      Icons.stars,
                      size: 30,
                      color: Color(0xffDA3301),
                    ),
                    const Text(
                      'Global Rank',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      '659',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )
                  ],
                ),
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(
                      Icons.speed,
                      size: 30,
                      color: Color(0xffDA3301),
                    ),
                    const Text(
                      'Total Score',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      '2',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )
                  ],
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  'Name',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyRewards()),
                          );
                        },
                        child: Container(
                          height: size.height * 0.05,
                          width: size.width * 0.3,
                          // ignore: prefer_const_constructors, sort_child_properties_last
                          child: Center(
                            child: const Text(
                              'My Rewards',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color(0xffDA3301)),
                        ),
                      ),
                      // ignore: sized_box_for_whitespace
                      Container(
                        width: size.width * 0.2,
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
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            color: Colors.redAccent, //color of divider
            height: 5, //height spacing of divider
            thickness: 3, //thickness of divier line
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Leaders',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            '24 Hours',
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
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              height: size.height * 0.06,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: Colors.black87),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.black87,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Search',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.black45),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // ignore: avoid_print
                      print('Searching');
                    },
                    child: Container(
                      height: size.height * 0.06,
                      width: size.width * 0.25,
                      decoration: const BoxDecoration(
                        color: Color(0xff777777),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            bottomRight: Radius.circular(100)),
                      ),
                      child: const Center(
                        child: Text(
                          'Search',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          // ignore: avoid_unnecessary_containers
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Center(
                        // ignore: sized_box_for_whitespace
                        child: Container(
                          width: size.width * 0.12,
                          child: const Text(
                            'Rank',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Color(0xff777777)),
                          ),
                        ),
                      ),
                      Center(
                        // ignore: sized_box_for_whitespace
                        child: Container(
                          width: size.width * 0.23,
                          child: const Text(
                            'Alias Name',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Color(0xff777777)),
                          ),
                        ),
                      ),
                      Center(
                        // ignore: sized_box_for_whitespace
                        child: Container(
                          width: size.width * 0.12,
                          child: const Text(
                            'Score',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Color(0xff777777)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              // height: size.height * 0.3,
              child: ListView.builder(
            //shrinkWrap: true,
            itemCount: leaderboardData.length,
            itemBuilder: (context, index) {
              // ignore: avoid_unnecessary_containers
              return Container(
                margin: EdgeInsets.only(
                    right: size.width * 0.05,
                    bottom: 10,
                    left: size.width * 0.05),
                padding: EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                    right: size.width * 0.08,
                    left: size.width * 0.08),
                // ignore: sort_child_properties_last
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        width: size.width * 0.12,
                        child: Text(
                          leaderboardData[index].rank,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff777777)),
                        ),
                      ),
                    ),
                    Center(
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        width: size.width * 0.23,
                        child: Column(
                          children: [
                            Text(
                              leaderboardData[index].name,
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff777777)),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              leaderboardData[index].location,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xff777777)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        width: size.width * 0.12,
                        child: Text(
                          leaderboardData[index].score,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff777777)),
                        ),
                      ),
                    )
                  ],
                ),
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
              );
            },
          ))
        ],
      ),
    );
  }
}
