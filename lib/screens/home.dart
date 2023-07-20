import 'package:bmi_calculator/constants/app_constants.dart';
import 'package:bmi_calculator/screens/aboutt.dart';
import 'package:bmi_calculator/widgets/leftbar.dart';
import 'package:bmi_calculator/widgets/rightbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.pink, Colors.blue])),
        child: Column(
          children: [
            Text(
                'Welcome to BMI Mobile App I remember the time when i left this app because i was not too much aware with the tecnology but see now i am doin it now so trust the process and believe the time factor'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                },
                child: Text('SWitch to About Screen'))
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.all(0), children: [
          DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.black, Colors.pink]),
              ),
              child: Text('BMI App')),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => HomeScreen(),
          ),
          ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () => Aboutus(),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setting'),
            onTap: () => HomeScreen(),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () => HomeScreen(),
          )
        ]),
      ),
    );
  }
}
