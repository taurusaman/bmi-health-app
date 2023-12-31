import 'package:bmi_calculator/screens/faq.dart';
import 'package:bmi_calculator/screens/home.dart';
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
        backgroundColor: Colors.pink,
        title: Text('About Us',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
      ),
      body: ListView(

        children: [
          
          Container(
          height: 500,
          width: 500,

          child: Card(
            color: Colors.white70,
            elevation: 50,

            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(26.0),

                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                          },
                          child: Text('About Us',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.pink,
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
                                color: Colors.blue.shade300,
                              )),
                        )
                      ]),
                  Text(
                      '\n\n\n About Us\n\n\n Welcome to our BMI App!\n\nPurpose\nOur BMI Calculator is a simple tool designed to help you calculate your Body Mass Index (BMI).BMI is a measurement that can give you an idea of whether your weight is appropriate for your height. Its an essential indicator of your overall health and can help you understand if you are underweight, normal weight, overweight, or obese. \n\n\nFeatures\nEasy-to-use interface for entering your weight and height- Instant calculation of your BMI- BMI classification and interpretation for a better understanding- User-friendly design for a pleasant experience\n\n\nDisclaimer\nPlease note that our BMI Calculator is not a diagnostic tool and should not replace professional medical advice. The results provided by the calculator are for informational purposes only. If you have any concerns about your health or weight, consult a healthcare professional.\n\n\nContact Us\nIf you have any questions, feedback, or suggestions for improvement, we would love to hear from you. You can reach us at [email@amansingh828355@gmail.com.com] or [phone9672277581]\n\n\nThe Team\n\nOur BMI Calculator App was created by a dedicated team of developers who are passionate about promoting health and wellness through technology. \n\nMeet the team:-\n [Aditya Raj](https://www.linkedin.com/in/adityaraj)\n\n Lead Developer- [Aman Singh](https://www.linkedin.com/in/amansingh)\n\n UX/UI Designer- [Aastha Seth](https://www.linkedin.com/in/aasthaseth)\n\nData Analyst We would like to thank you for using our app and hope it helps you on your journey to a healthier lifestyle!'),
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
                    'BMI is constitute and represent:',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Image(
                  image: AssetImage('assets/images/image1.jpg'),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
