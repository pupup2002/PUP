import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpButtons extends StatelessWidget {
  const SignUpButtons(this.phoneNumber, {super.key});
  final void Function(String accept) phoneNumber;

  @override
  Widget build(context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 120, horizontal: 10),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 180),
                  child: Text(
                    'LET\'S GET STARTED',
                    textAlign: TextAlign.center,
                    // style: GoogleFonts.poppins(
                    //   textStyle: const TextStyle(
                    //     color: Colors.white,
                    //     fontSize: 22,
                    //     letterSpacing: 0.5,
                    //     fontWeight: FontWeight.w500,
                    //   ),
                    // ),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 185,
            ),

            // CREATE ACCOUNT PHONE NUMBER BUTTON

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: ElevatedButton(
                onPressed: () {
                  // phoneNumber('phoneNumberScreen');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(210, 0, 0, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: const Text(
                  'CREATE ACCOUNT',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),

            // GOOGLE LOGIN BUTTON
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: ElevatedButton(
                onPressed: () {
                  // AuthMethods().signinwithGoogle(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 88, 176, 203),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // SvgPicture.asset(
                    //   'assets/google-icon.svg', // Ensure this path is correct
                    //   height: 19,
                    // ),
                    SizedBox(width: 7),
                    Text(
                      'CONTINUE WITH GOOGLE',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),

            // APPLE LOGIN BUTTON
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 88, 176, 203),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.apple,
                      size: 22,
                      color: Colors.black87,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'CONTINUE WITH APPLE',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
