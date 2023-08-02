import 'package:flutter/material.dart';

class IntroScreen1 extends StatefulWidget {
  const IntroScreen1({super.key});

  @override
  State<IntroScreen1> createState() => _IntroScreen1State();
}

class _IntroScreen1State extends State<IntroScreen1> {
  @override
  Widget build(BuildContext context) {
    return  Stack(
  children: [
    Positioned.fill(
      child: Container(
        color: Color(0xFF15202B),
      ),
    ),
    Positioned.fill(
      top: 150,
      child: Align(
        alignment: Alignment.topCenter,
        child: Image.asset(
          'assets/image4.png',
          width: 207,
          height: 207,
          
        ),
      ),
    ),
   


  ],
);
  }
}