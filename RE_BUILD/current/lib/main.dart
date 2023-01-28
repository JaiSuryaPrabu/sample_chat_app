import 'package:current/screens/chat.dart';
import 'package:current/screens/home.dart';
import 'package:current/screens/login.dart';
import 'package:current/screens/people.dart';
import 'package:current/widget/button.dart';
import 'package:current/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: home(),
        ),
      ),
    );
  }
}
