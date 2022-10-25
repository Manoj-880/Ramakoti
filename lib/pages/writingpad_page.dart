// ignore_for_file: unused_import, unnecessary_null_comparison

import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/services.dart';
import 'package:ramkoti/pages/global_dashboard_page.dart';

import 'package:ramkoti/pages/login_types.dart';

import '../Sections/drawer.dart';

class WritingPad extends StatefulWidget {
  const WritingPad({super.key});
  @override
  State<WritingPad> createState() => _WritingPadState();
}

class Signature1 extends CustomPainter {
  List<Offset> points;
  Signature1({required this.points});
  @override
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.red
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 15;
    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(points[i], points[i + 1], paint);
      }
    }
  }

  @override
  bool shouldRepaint(Signature1 oldDelegate) {
    // ignore: unrelated_type_equality_checks
    return oldDelegate != points;
  }
}

class _WritingPadState extends State<WritingPad> {
  List<Offset> _points = <Offset>[];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: sideDrawer(selectedindex: 3),
      appBar: AppBar(
        toolbarHeight: size.height * 0.15,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: const Color(0xffDA3301),
        title: const Text(
          'Writing Pad',
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
              print('Info clicked');
            },
            icon: Image.asset('assets/images/i_button_white.png'),
            color: Colors.white,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          IconButton(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            onPressed: () {
              // ignore: avoid_print
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const GlobalDashboard()),
              );
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
              print('Open popup');
            },
            icon: const Icon(
              Icons.tune,
              size: 30,
            ),
            color: Colors.white,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              width: size.width * 0.13,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(children: [
          Center(
            child: Text(
              'S',
              style: TextStyle(
                  fontSize: 250, color: Colors.black.withOpacity(0.2)),
            ),
          ),
          Align(
              // ignore: avoid_unnecessary_containers
              child: Container(
            child: GestureDetector(
              onPanUpdate: (DragUpdateDetails details) {
                setState(() {
                  RenderBox object = context.findRenderObject() as RenderBox;
                  Offset localposition = object
                      .globalToLocal(details.globalPosition)
                      .translate(0, -80);
                  _points = List.from(_points)..add(localposition);
                });
              },
              onPanEnd: (DragEndDetails details) => {_points = []},
              child: CustomPaint(
                painter: Signature1(
                  points: _points,
                ),
                size: Size.infinite,
              ),
            ),
          )),
        ]),
      ),
    );
  }
}
