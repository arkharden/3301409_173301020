//import 'dart:html';
import 'package:gamecritic/Auth/main_page.dart';
import 'package:gamecritic/firebase_options.dart';
import 'package:gamecritic/Auth/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Auth/loginscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const OyunKritik());
}

class OyunKritik extends StatelessWidget {
  const OyunKritik({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(
        showRegisterPage: () {},
      ),
    );
  }
}
