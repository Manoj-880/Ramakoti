import 'package:flutter/material.dart';
import 'package:ramkoti/pages/login_types.dart';

// ignore: camel_case_types
class Language_selection extends StatefulWidget {
  const Language_selection({super.key});

  @override
  State<Language_selection> createState() => _Language_selectionState();
}

// ignore: camel_case_types
class _Language_selectionState extends State<Language_selection> {
  int groupvalue = 0;
  int _value = 1;
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
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 70,
                  // ignore: sort_child_properties_last
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        isExpanded: true,
                        value: _value,
                        items: const [
                          DropdownMenuItem(
                            // ignore: sort_child_properties_last
                            child: Text(
                              "Select Language",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            // ignore: sort_child_properties_last
                            child: Text(
                              "Devanagari",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            value: 2,
                          ),
                          DropdownMenuItem(
                            // ignore: sort_child_properties_last
                            child: Text(
                              "English",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            value: 3,
                          ),
                          DropdownMenuItem(
                            // ignore: sort_child_properties_last
                            child: Text(
                              "Hindi",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            value: 4,
                          ),
                          DropdownMenuItem(
                            // ignore: sort_child_properties_last
                            child: Text(
                              "Kannada",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            value: 5,
                          ),
                          DropdownMenuItem(
                            // ignore: sort_child_properties_last
                            child: Text(
                              "Tamil",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            value: 6,
                          ),
                          DropdownMenuItem(
                            // ignore: sort_child_properties_last
                            child: Text(
                              "Telugu",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            value: 7,
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _value = value!;
                          });
                        },
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.black)),
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              RadioListTile(
                title: const Text(
                    "I agree to the terms & conditions of using RamaKoti App"),
                value: "male",
                groupValue: "male",
                onChanged: (value) {
                  setState(() {});
                },
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
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
                              builder: (context) => const LoginTypes()),
                        );
                      },
                      child: const Text(
                        'Continue',
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
              )
            ],
          ),
        ],
      ),
    );
  }
}
