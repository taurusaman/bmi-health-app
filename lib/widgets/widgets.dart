

import 'package:bmi_calculator/screens/aboutt.dart';
import 'package:bmi_calculator/screens/home.dart';
import 'package:bmi_calculator/screens/settings.dart';
import 'package:flutter/material.dart';


Widget hellodrawer() {
  return Drawer(
    //ye alag scaffold ka property jaise appbar hota hai waise hi navigatonbar drawer hote hai : ye listview ka nahi hai yha listview end ho gya hai
    child: ListView(padding: EdgeInsets.all(0), children: [
      DrawerHeader(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.black, Colors.pink]),
          ),
          child: Text('BMI App')),
      ListTile(
        leading: Icon(Icons.home),
        title: Text('Home'),
        onTap: () => HomeScreen()
      ),
      ListTile(
        leading: Icon(Icons.info),
        title: Text('About'),
        onTap: () => Aboutus()
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('Setting'),
        onTap: () => settingscreen()
      ),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text('Logout'),
        onTap: () => HomeScreen(),
      )
    ]),
  );
}
