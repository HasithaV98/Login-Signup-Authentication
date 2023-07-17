import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:authentication_app/start_page.dart';
import 'package:login_signup_authentication/start_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(AuthenticationApp());
}

class AuthenticationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Authentication App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StartPage(),
    );
  }
}
