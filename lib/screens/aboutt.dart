
import 'package:bmi_calculator/screens/faq.dart';
import 'package:flutter/material.dart';
 
class Aboutus extends StatefulWidget {
  const Aboutus({super.key});
 
  @override
  State<Aboutus> createState() => _AboutusState();
}
 
class _AboutusState extends State<Aboutus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff35b237),
        title: Text('About Us',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      ),
      body: ListView(children: [
        Container(
          height: 500,
          width: 500,
          child: Card(
            color: Colors.white70,
            elevation: 50,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Aboutus()));
                          },
                          child: Text('About Us',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Color(0xff35b237),
                              )),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => FAQ()));
                          },
                          child: Text('FAQs',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Color(0xff35b237),
                              )),
                        )
                      ]),
                  Text(
                      '\n\n\nOur e-waste management app provides a convenient and reliable solution for individuals, households, and businesses to dispose of their electronic waste in an environmentally friendly manner. The app allows users (normal citizens and electronic shops) to schedule e-waste pickups from their location and send it to a hub where those e-wastes are classified based on several electronic categories. After categorization the waste is disassembled, segregated and sent to the concerned industry. The app accepts a wide range of electronic devices, including large appliances, small appliances, light equipment, IT components, batteries, and medical devices.In addition the app provides real-time updates on the status of the e-waste pickup, including the pickup date and time, pickup location, and destination. The user will get notified at every step of e-waste recycling from getting your rider appointed to reaching the destination industry.'),
                ]),
              ),
            ),
          ),
        ),
        Container(
          height: 500,
          width: 500,
          child: Card(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Steps involved in the process:',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Image(
                  image: AssetImage('assets/model.png'),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
