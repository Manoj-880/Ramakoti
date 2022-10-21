import 'package:flutter/material.dart';

class LeaderboardDialog extends StatelessWidget {
  const LeaderboardDialog({
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
        height: size.height * 0.5,
        child: Column(
          children: [
            Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    height: size.height * 0.08,

                    // ignore: sort_child_properties_last
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          'How Rewards work?',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        IconButton(
                          onPressed: (() {
                            Navigator.of(context).pop();
                          }),
                          icon: const Icon(
                            Icons.cancel,
                            size: 40,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: const Color(0xffda3301),
                        borderRadius: BorderRadius.circular(100)),
                  ),
                ]),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Rewards earned can be redeemed for various gifts*.The more you use the App, the more rewards you earn. For example, writing Sri Rama a number of times will earn you certain reward points',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.black87),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'For more information visit our page:',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.black87),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                'Pramanam.org',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    decoration: TextDecoration.underline),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                '*Terms & Condition s apply',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.black87),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
