import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'package:ramkoti/pages/writingpad_page.dart';

class OTPVerification extends StatefulWidget {
  final String phone;
  // ignore: use_key_in_widget_constructors
  const OTPVerification(this.phone);

  @override
  State<OTPVerification> createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<OTPVerification> {
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
                  // ignore: prefer_const_constructors
                  child: CircleAvatar(
                    radius: 50,
                    // ignore: sort_child_properties_last
                    child: const Icon(
                      Icons.mark_chat_read,
                      size: 50,
                    ),

                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xffDA3301),
                  ),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text(
                'Verification',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'OTP Sent to your mobile',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.black54),
              ),
              Text(
                '+91-${widget.phone}',
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87),
              ),
              OtpTextField(
                numberOfFields: 6,

                focusedBorderColor: Colors.black,

                showFieldAsBox: false,
                borderWidth: 5.0,
                textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87),
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here if necessary
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {},
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const WritingPad()),
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
              const SizedBox(
                height: 40,
              ),
              // ignore: prefer_const_constructors
              Text(
                'Not recieved OTP Yet?',
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.black54),
              ),
              const Text(
                'You can ask us to resend after 15 sec',
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.black54),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  // ignore: avoid_print
                  print('Resend OTP');
                },
                child: Container(
                  height: 50,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  // ignore: sort_child_properties_last
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Resend OTP',
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
                height: 10,
              ),
              const Text(
                'Now you can Resend OTP',
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.black54),
              ),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Flexible(
                  child: Text(
                    'Please check your Number is correct',
                    // ignore: prefer_const_constructors
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.black54),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
