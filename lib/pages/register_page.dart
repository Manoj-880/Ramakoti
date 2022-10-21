import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                    child:
                        ClipOval(child: Image.asset('assets/images/logo.png')),
                  ),
                ),
              )
            ],
          ),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        height: 70,
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(fontSize: 18),
                          textAlignVertical: TextAlignVertical.center,
                          decoration: const InputDecoration(
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35))),
                            fillColor: Color(0xffffffff),
                            contentPadding:
                                EdgeInsets.only(left: 20, right: 20),
                            hintText: 'Mobile number',
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w300),
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(10)
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        height: 70,
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(fontSize: 18),
                          textAlignVertical: TextAlignVertical.center,
                          decoration: const InputDecoration(
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35))),
                            fillColor: Color(0xffffffff),
                            contentPadding:
                                EdgeInsets.only(left: 20, right: 20),
                            hintText: 'Email Id',
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w300),
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(10)
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        height: 70,
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(fontSize: 18),
                          textAlignVertical: TextAlignVertical.center,
                          decoration: const InputDecoration(
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35))),
                            fillColor: Color(0xffffffff),
                            contentPadding:
                                EdgeInsets.only(left: 20, right: 20),
                            hintText: 'First Name',
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w300),
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(10)
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        height: 70,
                        child: TextField(
                          maxLines: 1,
                          style: const TextStyle(fontSize: 18),
                          textAlignVertical: TextAlignVertical.center,
                          decoration: const InputDecoration(
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35))),
                            fillColor: Color(0xffffffff),
                            contentPadding:
                                EdgeInsets.only(left: 20, right: 20),
                            hintText: 'Last Name',
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w300),
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(10)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    GestureDetector(
                      onTap: () {
                        // ignore: avoid_print
                        print('Continue');
                      },
                      child: Container(
                        height: 50,
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        // ignore: sort_child_properties_last
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Continue',
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
                    // ignore: avoid_unnecessary_containers
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
