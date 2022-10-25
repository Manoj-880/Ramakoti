import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ramkoti/pages/mobilenumber_page.dart';
import 'package:ramkoti/pages/register_page.dart';
import 'package:ramkoti/pages/writingpad_page.dart';

// ignore: unused_import
import 'aboutpage.dart';

// ignore: camel_case_types
class LoginTypes extends StatefulWidget {
  const LoginTypes({super.key});

  @override
  State<LoginTypes> createState() => _LoginTypes();
}

// ignore: camel_case_types
class _LoginTypes extends State<LoginTypes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 180,
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
                  bottom: -50,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    elevation: 2,
                    child: CircleAvatar(
                      radius: 50,
                      // ignore: sort_child_properties_last
                      child: ClipOval(
                          child: Image.asset('assets/images/logo.png')),
                    ),
                  ),
                )
              ]),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ignore: prefer_const_constructors

              const SizedBox(
                height: 70,
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      'Sign in with',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          // ignore: sort_child_properties_last
                          child: TextButton(
                            onPressed: () {
                              // ignore: avoid_print
                              print('facebook clicked');
                            },
                            child: const Text(
                              'f',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.white, Colors.grey],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Container(
                          // ignore: sort_child_properties_last
                          child: TextButton(
                            onPressed: () {
                              // ignore: avoid_print
                              print('facebook clicked');
                            },
                            child: const Text(
                              'G',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.white, Colors.grey],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MobileNumber()),
                        );
                      },
                      child: Container(
                        height: 50,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        // ignore: sort_child_properties_last
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xffDA3301),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterPage()),
                        );
                      },
                      child: Container(
                        height: 50,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        // ignore: sort_child_properties_last
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Register',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xffDA3301),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () async {
                        WidgetsFlutterBinding.ensureInitialized();
                        await SystemChrome.setPreferredOrientations(
                            [DeviceOrientation.landscapeLeft]);
                        // ignore: use_build_context_synchronously
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WritingPad()),
                        );
                      },
                      child: Container(
                        height: 50,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        // ignore: sort_child_properties_last
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Continue as Guest',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xffDA3301),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Currently registration with OTP is available for Indian locations & mobile numbers only',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
