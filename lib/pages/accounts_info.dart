import 'package:flutter/material.dart';
import 'package:ramkoti/pages/profilepage.dart';

import '../Sections/drawer.dart';

class AccountInformation extends StatefulWidget {
  const AccountInformation({super.key});

  @override
  State<AccountInformation> createState() => _AccountInformationState();
}

class _AccountInformationState extends State<AccountInformation> {
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
          'Account Information',
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyProfile()),
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios,
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
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const SizedBox(
              height: 5,
            ),
            const CircleAvatar(
              radius: 70,
              // ignore: sort_child_properties_last
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 120,
              ),

              backgroundColor: Colors.grey,
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Name',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              '@mail',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Color(0xffDA3301)),
            ),
            const Divider(
              color: Color(0xffDA3301), //color of divider
              height: 5, //height spacing of divider
              thickness: 2, //thickness of divier line
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: avoid_unnecessary_containers
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Text(
                              'First Name:',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black87),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              'Name',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),
                            )
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            // ignore: avoid_print
                            print('edit');
                          },
                          icon: const Icon(Icons.edit),
                          iconSize: 30,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // ignore: avoid_unnecessary_containers
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Text(
                              'Last Name:',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black87),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              'Last Name',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),
                            )
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            // ignore: avoid_print
                            print('edit');
                          },
                          icon: const Icon(Icons.edit),
                          iconSize: 30,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // ignore: avoid_unnecessary_containers
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          'Alias Name:',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.black87),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Display Name',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // ignore: avoid_unnecessary_containers
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          'Email ID:',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.black87),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          '@ mailId',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // ignore: avoid_unnecessary_containers
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          'Phone:',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.black87),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Mobile Number',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
