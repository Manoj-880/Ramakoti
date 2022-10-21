import 'package:flutter/material.dart';
import 'package:ramkoti/pages/login_types.dart';
// ignore: unused_import
import 'package:ramkoti/pages/mobilenumber_page.dart';

// ignore: camel_case_types
class logoutpopup extends StatelessWidget {
  const logoutpopup({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
      insetPadding: const EdgeInsets.all(20),
      backgroundColor: Colors.white,
      // ignore: sized_box_for_whitespace
      child: Container(
        height: size.height * 0.2,
        width: size.width * 0.2,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'Are you Sure,',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'You want to signout?',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ],
              ),
            ),
            Container(
              height: size.height * 0.08,
              // ignore: prefer_const_constructors
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: const EdgeInsets.only(top: 8.5),
              decoration: const BoxDecoration(
                color: Color(0xffDA3301),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: size.height * 0.06,
                      width: size.width * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: Text(
                          'No',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginTypes()),
                      );
                    },
                    child: Container(
                      height: size.height * 0.06,
                      width: size.width * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: Text(
                          'Yes',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                      ),
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
