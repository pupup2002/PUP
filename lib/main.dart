
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pupup_app/pupup_start.dart';

import 'home.dart';


void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  runApp(
    const PupStart(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
