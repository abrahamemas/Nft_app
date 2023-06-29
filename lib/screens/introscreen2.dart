import 'package:flutter/material.dart';

class IntroScreen2 extends StatefulWidget {
  const IntroScreen2({super.key});

  @override
  State<IntroScreen2> createState() => _IntroScreen2State();
}

class _IntroScreen2State extends State<IntroScreen2> {
  @override
  Widget build(BuildContext context) {
    return Stack(
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
          'assets/image5.png',
          width: 207,
          height: 207,
          
        ),
      ),
    ),
    
  ],
);

    
  }
}