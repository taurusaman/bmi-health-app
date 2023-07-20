import 'package:bmi_calculator/screens/home.dart';
import 'package:bmi_calculator/screens/loginscreen.dart';
import 'package:bmi_calculator/screens/otpscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  // Initialize Firebase 
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(BMIApp());
}

class BMIApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => MyLoginscreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
