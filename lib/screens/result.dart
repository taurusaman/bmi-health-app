import 'package:flutter/material.dart';

class resultscreen extends StatefulWidget {
  const resultscreen({super.key});

  @override
  State<resultscreen> createState() => _resultscreenState();
}

class _resultscreenState extends State<resultscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.pink,Colors.blue])),
        child: Column(
          
          children: [
            Text('This is result screen'),
          ],
        ),
      ),
    );
  }
}
