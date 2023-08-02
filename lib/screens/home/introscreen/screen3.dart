import 'package:flutter/material.dart';

class IntroScreen3 extends StatefulWidget {
  const IntroScreen3({super.key});

  @override
  State<IntroScreen3> createState() => _IntroScreen3State();
}

class _IntroScreen3State extends State<IntroScreen3> {
  @override
  Widget build(BuildContext context) {
    return Stack(
  children: [
    Positioned.fill(
      child: Container(
        color: Color(0xFF15202B),
      ),
    ),
    SizedBox(height: 300,),
    Positioned.fill(
      top: 150,
      child: Align(
        alignment: Alignment.topCenter,
        child: Image.asset(
          'assets/image6.png',
          width: 207,
          height: 207,
          
        ),
      ),
    ),
  
  ],
);
  }
}