import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../Sections/drawer.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  // ignore: unused_field
  double? _ratingValue;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: sideDrawer(selectedindex: 7),
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: const Color(0xffDA3301),
        title: const Text(
          'Feedback',
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
                    child:
                        ClipOval(child: Image.asset('assets/images/logo.png')),

                    backgroundColor: Colors.grey,
                  ),
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  height: 120,
                ),
                const Text(
                  'Enter Review',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
                const SizedBox(
                  height: 20,
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  height: 100,
                  child: const TextField(
                    maxLines: 5,
                    style: TextStyle(fontSize: 18),
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      fillColor: Color(0xffffffff),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Rating',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: 70,
                      child: RatingBar(
                          initialRating: 0,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          ratingWidget: RatingWidget(
                              full: const Icon(
                                Icons.star,
                                color: Color(0xffDA3301),
                              ),
                              half: const Icon(
                                Icons.star_half,
                                color: Color(0xffDA3301),
                              ),
                              empty: const Icon(
                                Icons.star_outline,
                                color: Color(0xffDA3301),
                              )),
                          onRatingUpdate: (value) {
                            setState(() {
                              _ratingValue = value;
                            });
                          }),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  // ignore: sort_child_properties_last
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          // ignore: avoid_print
                          print('Submit');
                        },
                        child: const Text(
                          'Submit',
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
          )
        ],
      ),
    );
  }
}
