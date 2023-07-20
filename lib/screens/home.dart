import 'package:bmi_calculator/screens/aboutt.dart';
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
      body: ListView(
        children: [
          SizedBox(height: 20), //pala children column fir listview ke andar
          Container(
            //dusrea children listview ka

            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.pink, Colors.blue])),

            height: 100,
            width: 500,

            child: Card(
              //dusre children ka child
              elevation: 70,
              borderOnForeground: true,
              color: Colors.pink.shade50,
              shadowColor: Colors.black,

              child: Text(
                  'Welcome to BMI Mobile App I remember the time when i left this app because i was not too much aware with the tecnology but see now i am doin it now so trust the process and believe the time factor'),
            ),
          ),
          SizedBox(height: 20), //tisra children listview ka

          Image(
              image: AssetImage(
                  'assets/images/image4.jpg')), ////tisra children listview ka
          SizedBox(height: 15), //chautha children listview ka
          Container(
            //panchwa children listview ka
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.pink.shade700, Colors.blue])),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Enter Your Weight',
                      hintText: 'Enter Weight in KG'),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Enter Your Hieght',
                      hintText: 'Enter Weight in CM'),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Enter Your Age',
                      hintText: 'Enter Weight in Years'),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Enter Your Gender',
                      hintText: 'Male or Female'),
                ),
              ],
            ),
          ),
          SizedBox(height: 30), //6wa children listview ka
          Image(
              image: AssetImage(
                  'assets/images/image3.jpg')), //satwa children listview ka

          SizedBox(
            height: 20,
          ), //aathwa children listview ka
          ElevatedButton(
              //9wa children listview ka
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
              child: Text('SWitch to About Screen')),

          Image(image: AssetImage('assets/images/image2.jpg')),

          Image(image: AssetImage('assets/images/image1.jpg')),

          Image(image: AssetImage('assets/images/image4.jpg')),
        ],
      ),
      drawer: Drawer(
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
            onTap: () => Navigator.pushNamed(context, '/home'),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: () => Navigator.pushNamed(context, '/about'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setting'),
            onTap: () => Navigator.pushNamed(context, '/setting'),
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
