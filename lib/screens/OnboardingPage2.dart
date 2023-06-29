import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/screens/SignInPage.dart';

import '../widgets/CustomButton2.dart';

class OnboardingPage2 extends StatefulWidget {
  const OnboardingPage2({super.key});

  @override
  State<OnboardingPage2> createState() => _OnboardingPage2State();
}

class _OnboardingPage2State extends State<OnboardingPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF15202B),
      body: Stack(
        children: [
          Transform.translate(
            offset: Offset(24, 30),
            child: Image.asset(
            'assets/Logo.png',
            height: 140,
            width: 140,
            ),
            ),
             Transform.translate(
              offset: Offset(-100, 40),
              child: Image.asset(
                'assets/Design2.png',
                height: 212,
                width: 600,
                )
              ,
            ),
            Transform.translate(
              offset: Offset(-80, 40),
              child: Image.asset(
                'assets/Design1.png',
                height: 180,
                width: 400,
                )
              ,
            ),
            
             Transform.translate(
              offset: Offset(25, 470),
              child:   Text(
                "All NFTs are\ncertifiably unique\nand ownable",
                style: GoogleFonts.josefinSans(
                   color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.w800,
                )
                      ),
              ),
            
            Transform.translate(
              offset: Offset(25, 615),
              child: Text('A credible and excellent marketplace for\nnon-fungible token',
                style: GoogleFonts.josefinSans(
                   color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                )
              ),
            ),
         Padding(
          padding: EdgeInsets.only(bottom: 50, right: 120),
           child: Align(
            alignment: Alignment.bottomCenter,
             child: SizedBox(
               width: 255,
               height: 45,
               child: CustomButton2(
                 text: 'Connect with Wallet',
                 onPressed: () {
                   Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignInPage()),
                   );
                 },
               ),
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.only(bottom: 32 , left: 255),
           child: Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () {
                   Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignInPage()),
                   );
              },

              child: Image.asset(
                'assets/Next.png',
                 width: 70,
                height: 80,
                ),
            )),
         ),

        ],
      ) ,
    );
  }
}