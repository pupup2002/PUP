import 'package:flutter/material.dart';
import 'package:pupup_app/phone_screen.dart';
import 'package:pupup_app/pupup_startScreen.dart';
import 'package:pupup_app/signup_page.dart';


class PupStart extends StatefulWidget {
  const PupStart({super.key});

  @override
  State<StatefulWidget> createState() {
    return _PupStartState();
  }
}

class _PupStartState extends State<PupStart> {
  var activeScreen = 'signUpPage';

  void switchScreen(String accept) {
    setState(() {
      activeScreen = accept;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = PupStartScreen(switchScreen);

    if (activeScreen == 'signUpPage') {
      screenWidget = SignUpPage(switchScreen);
    }

    if (activeScreen == 'phoneNumberScreen') {
      screenWidget = const PhoneNoAuth();
    }

    return MaterialApp(
      home: Scaffold(
        body: screenWidget,
      ),
    );
  }
}
