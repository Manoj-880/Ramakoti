import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ramkoti/pages/feedbackpage.dart';
import 'package:ramkoti/pages/global_dashboard_page.dart';
import 'package:ramkoti/pages/leaderboards_page.dart';
import 'package:ramkoti/pages/my_rewards_page.dart';
import 'package:ramkoti/pages/writingpad_page.dart';

import '../pages/aboutpage.dart';
import '../pages/profilepage.dart';
import 'logout_popup.dart';

// ignore: camel_case_types, must_be_immutable
class sideDrawer extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  var selectedindex;

  sideDrawer({super.key, required this.selectedindex});

  @override
  State<sideDrawer> createState() => _sideDrawerState();
}

// ignore: camel_case_types
class _sideDrawerState extends State<sideDrawer> {
  bool index = false;
  @override
  Widget build(BuildContext context) {
    //  return Container();

//Drawer sideDrawer(selectedindex, context, size) {
    // var index;
    Size size = MediaQuery.of(context).size;
    return Drawer(
      width: size.width * 0.7,
      // ignore: sort_child_properties_last
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(
            top: 60,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () async {
                  WidgetsFlutterBinding.ensureInitialized();
                  await SystemChrome.setPreferredOrientations(
                      [DeviceOrientation.portraitUp]);
                  // ignore: use_build_context_synchronously
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => const About())));
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 30),
                  color: widget.selectedindex == 1
                      ? Colors.red
                      : Colors.transparent,
                  width: size.width,
                  child: const Text(
                    'About',
                    style: TextStyle(fontSize: 20, color: Color(0xffffffff)),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async {
                  WidgetsFlutterBinding.ensureInitialized();
                  await SystemChrome.setPreferredOrientations(
                      [DeviceOrientation.portraitUp]);
                  // ignore: use_build_context_synchronously
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const MyProfile())));
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 30),
                  color: widget.selectedindex == 2
                      ? Colors.red
                      : Colors.transparent,
                  width: size.width,
                  child: const Text(
                    'My Profile',
                    style: TextStyle(fontSize: 20, color: Color(0xffffffff)),
                  ),
                ),
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
                          builder: ((context) => const WritingPad())));
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 30),
                  color: widget.selectedindex == 3
                      ? Colors.red
                      : Colors.transparent,
                  width: size.width,
                  child: const Text(
                    'Writing Pad',
                    style: TextStyle(fontSize: 20, color: Color(0xffffffff)),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async {
                  WidgetsFlutterBinding.ensureInitialized();
                  await SystemChrome.setPreferredOrientations(
                      [DeviceOrientation.portraitUp]);
                  // ignore: use_build_context_synchronously
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const LeaderBoards())));
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 30),
                  color: widget.selectedindex == 4
                      ? Colors.red
                      : Colors.transparent,
                  width: size.width,
                  child: const Text(
                    'Leaderboard',
                    style: TextStyle(fontSize: 20, color: Color(0xffffffff)),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async {
                  WidgetsFlutterBinding.ensureInitialized();
                  await SystemChrome.setPreferredOrientations(
                      [DeviceOrientation.portraitUp]);
                  // ignore: use_build_context_synchronously
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const MyRewards())));
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 30),
                  color: widget.selectedindex == 5
                      ? Colors.red
                      : Colors.transparent,
                  width: size.width,
                  child: const Text(
                    'My Rewards',
                    style: TextStyle(fontSize: 20, color: Color(0xffffffff)),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async {
                  WidgetsFlutterBinding.ensureInitialized();
                  await SystemChrome.setPreferredOrientations(
                      [DeviceOrientation.portraitUp]);
                  // ignore: use_build_context_synchronously
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const GlobalDashboard())));
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 30),
                  color: widget.selectedindex == 6
                      ? Colors.red
                      : Colors.transparent,
                  width: size.width,
                  child: const Text(
                    'Global Dashboard',
                    style: TextStyle(fontSize: 20, color: Color(0xffffffff)),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async {
                  WidgetsFlutterBinding.ensureInitialized();
                  await SystemChrome.setPreferredOrientations(
                      [DeviceOrientation.portraitUp]);
                  // ignore: use_build_context_synchronously
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const FeedbackPage())));
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 30),
                  color: widget.selectedindex == 7
                      ? Colors.red
                      : Colors.transparent,
                  width: size.width,
                  child: const Text(
                    'Feedback',
                    style: TextStyle(fontSize: 20, color: Color(0xffffffff)),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => logoutpopup(
                            size: size,
                          ));
                  setState(() {
                    index = true;
                    widget.selectedindex = 0;
                  });
                  //print(selectedindex);
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 30),
                  color: index == true ? Colors.red : Colors.transparent,
                  width: size.width,
                  child: const Text(
                    'Logout',
                    style: TextStyle(fontSize: 20, color: Color(0xffffffff)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xff444444),
    );
  }
}
