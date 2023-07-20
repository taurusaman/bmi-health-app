import 'package:bmi_calculator/screens/aboutt.dart';
import 'package:bmi_calculator/screens/home.dart';
import 'package:bmi_calculator/screens/loginscreen.dart';
import 'package:bmi_calculator/screens/settings.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main()  {
  // Initialize Firebase
  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp(
  //  options: DefaultFirebaseOptions.currentPlatform,
 // );
  runApp(BMIApp());
}

class BMIApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/login': (context) => MyLoginscreen(),
        '/home': (context) => HomeScreen(),
        '/about': (context) => Aboutus(),
        '/setting': (context) => settingscreen(),
      },
    );
  }
}
