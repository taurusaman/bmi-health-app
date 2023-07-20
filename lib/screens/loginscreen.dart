import 'package:bmi_calculator/screens/otpscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyLoginscreen extends StatefulWidget {
  const MyLoginscreen({super.key});

  @override
  State<MyLoginscreen> createState() => _MyLoginscreenState();
}

class _MyLoginscreenState extends State<MyLoginscreen> {
  TextEditingController loginphonecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(colors: [Colors.orange, Colors.black])),
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5),
                child: Column(children: [
                  TextFormField(
                      controller: loginphonecontroller,
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          labelText: 'Phone',
                          hintText: 'Enter Phone Number',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)))),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 199, 91, 52),
                    ),
                    onPressed: () async {
                      
                      try {
                         FirebaseAuth auth = FirebaseAuth.instance;
                        String phoneNumber =
                          '+91' + loginphonecontroller.text.trim();
                        

                        await FirebaseAuth.instance.verifyPhoneNumber(
                            verificationCompleted: (PhoneAuthCredential credential) async {
                      // Verification completed automatically (not required in this case).
                    },
                    verificationFailed: (FirebaseAuthException e) {
                      // Handle verification failure.
                      print('Verification failed: ${e.message}');
                    },
                    codeSent: (String verificationId, [int? forceResendingToken]) {
                      // Navigate to VerifyOtpScreen with verificationId to use later.
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VerifyOtpScreen(verificationId),
                        ),
                      );
                    },
                    codeAutoRetrievalTimeout: (String verificationId) {
                      // Auto-resolution timed out and the verification request has not been resolved.
                      // Handle this scenario if needed.
                    },
                  );
                } catch (e) {
                  // Handle verification exception.
                  print('Error verifying phone number: $e');
                }
              },
              child: Text('Send OTP'),
            ),
          ],
        ),
      ),
        
                        
     ) );
                
  }
}
