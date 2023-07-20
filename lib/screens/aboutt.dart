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
        backgroundColor: Colors.pink,
        title: Text('About Us',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
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
                                color: Colors.pink,
                              )),
                        )
                      ]),
                  Text(
                      '\n\n\n About Us Welcome to our BMI Calculator App!\n\nPurpose \n Our BMI Calculator is a simple tool designed to help you calculate your Body Mass Index (BMI). BMI is a measurement that can give you an idea of whether your weight is appropriate for your height. Its an essential indicator of your overall health and can help you understand if you are underweight, normal weight, overweight, or obese. \n\n Features- Easy-to-use interface for entering your weight and height- Instant calculation of your BMI- BMI classification and interpretation for a better understanding- User-friendly design for a pleasant experience \n\nDisclaimer \nPlease note that our BMI Calculator is not a diagnostic tool and should not replace professional medical advice. The results provided by the calculator are for informational purposes only. If you have any concerns about your health or weight, consult a healthcare professional.\n\n Contact Us\n If you have any questions, feedback, or suggestions for improvement, wed love to hear from you. You can reach us at [email@taurusaman@123.com](mailto:email@amansingh828355@gmail.com.com) or through our social media channels:- [Facebook](https://www.facebook.com/example)- [Twitter](https://twitter.com/example)\n\n The Team\n\nOur BMI Calculator App was created by a dedicated team of developers who are passionate about promoting health and wellness through technology. Meet the team:- [Aditya Raj](https://www.linkedin.com/in/amansingh): Lead Developer- [Aman Singh](https://www.linkedin.com/in/janesmith): UX/UI Designer- [Aastha Seth](https://www.linkedin.com/in/mikejohnson): Data AnalystWe would like to thank you for using our app and hope it helps you on your journey to a healthier lifestyle!'),
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
