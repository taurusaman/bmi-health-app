import 'package:flutter/material.dart';
 
class FAQ extends StatefulWidget {
  const FAQ({super.key});
 
  @override
  State<FAQ> createState() => _FAQState();
}
 
class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('FAQs',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),backgroundColor: Colors.pink,),
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
         child: Card(
          
          color: Colors.pink.shade200,
          elevation: 50,
          
          child: SingleChildScrollView(
            child: Padding(padding: EdgeInsets.all(10.0),
          child: Text('FAQ\n\n\nQ: What is e-waste\nA:E-waste refers to electronic products that are no longer in use or have reached their end of life, such as computers, phones, TVs, and other electronics.\n\n\nQ: Why is e-waste management important?\nA: E-waste contains hazardous materials that can pose a threat to human health and the environment. Proper e-waste management ensures that these materials are handled and disposed of safely.\n\n\nQ: How does the e-waste management app work?\nA: The app allows users to schedule e-waste pickups from their location and select a destination for the e-waste. The e-waste is then picked up and transported to the selected destination for proper disposal or recycling.\n\n\nQ: What types of e-waste are accepted?\nA: The app accepts a wide range of electronic devices, including computers, laptops, tablets, smartphones, TVs, monitors, printers, and other electronic accessories.\n\n\nQ: How do I prepare my e-waste for pickup?\nA: Users should ensure that all personal data is removed from the device before pickup. Additionally, users should pack the e-waste securely and label it appropriately.\n\n\nQ: Is the e-waste recycled?\nA: Yes, the e-waste is transported to a certified recycling facility where it is properly dismantled and recycled.\n\n\nQ: Is there a cost for the e-waste pickup service?\nA: The cost for the e-waste pickup service varies depending on the location and type of e-waste. Users can view the pickup cost in the app before scheduling the pickup.\n\n\nQ: Can I track the status of my e-waste pickup?\nA: Yes, the app provides real-time updates on the status of the e-waste pickup, including the pickup date and time, pickup location, and destination.'), 
           ),
          ),
         ),
        ),
 
      ),
 
    );
  }
}
 
