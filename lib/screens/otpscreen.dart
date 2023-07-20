import 'package:bmi_calculator/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class VerifyOtpScreen extends StatefulWidget {
  final String verificationId;

  VerifyOtpScreen(this.verificationId);

  @override
  _VerifyOtpScreenState createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verify OTP'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: otpController,
              decoration: InputDecoration(labelText: 'Enter OTP'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () async {
                String smsCode = otpController.text.trim();
                FirebaseAuth _auth = FirebaseAuth.instance;

                try {
                  PhoneAuthCredential credential = PhoneAuthProvider.credential(
                    verificationId: widget.verificationId,
                    smsCode: smsCode,
                  );
                  await _auth.signInWithCredential(credential);

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                  // Handle the signed-in state, e.g., navigate to the home screen.
                  // For demonstration purposes, let's simply print the user's UID.
                  print('Successfully signed in: ${_auth.currentUser?.uid}');
                } catch (e) {
                  // Handle sign-in exception.
                  print('Error signing in: $e');
                }
              },
              child: Text('Verify OTP'),
            ),
          ],
        ),
      ),
    );
  }
}
