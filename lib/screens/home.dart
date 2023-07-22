
import 'package:bmi_calculator/widgets/widgets.dart';
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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 20), //pala children column ke andar
              Container(
                                    //dusrea children column widget ka ka
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(colors: [Colors.pink, Colors.blue])),
      
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
              SizedBox(height: 20), //tisra children column ka
      
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
              SizedBox(height: 15),
              Container(
                height: 40,
                width: 60,
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(colors: [Colors.pink, Colors.blue])),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/result');
                    },
                    child: Text('Get Your BMI Result')),
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
        ),
      ),
      drawer: hellodrawer(),
    );
  }
}
