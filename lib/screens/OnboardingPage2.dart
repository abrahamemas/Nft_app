import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/screens/SignInPage.dart';

import '../Buttons/CustomButton2.dart';

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
      body: LayoutBuilder(
         builder: (context, constraints) {
             return  Stack(
          children: [
            Positioned(
               top: constraints.maxHeight * 0.04,
                right: constraints.maxWidth * 0.62,
              child: Image.asset(
              'assets/Logo.png',
              height: 140,
              width: 140,
              ),
              ),
               Positioned(
                top: constraints.maxHeight * 0.04,
                right: constraints.maxWidth * -0.2,
                child: Image.asset(
                  'assets/Design2.png',
                  height: 212,
                  width: 800,
                  )
                ,
              ),
              Positioned(
                top: constraints.maxHeight * 0.04,
                right: constraints.maxWidth * -0.0,
                child: Image.asset(
                  'assets/Design1.png',
                  height: 180,
                  width: 600,
                  )
                ,
              ),
              
               Positioned(
                top: constraints.maxHeight * 0.5,
                left: constraints.maxWidth * 0.07,
                child:   Text(
                  "All NFTs are\ncertifiably unique\nand ownable",
                  style: GoogleFonts.nunito(
                     color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.w800,
                  )
                        ),
                ),
              
              Positioned(
                top: constraints.maxHeight * 0.7,
                left: constraints.maxWidth * 0.07,
                child: Text('A credible and excellent marketplace for\nnon-fungible token',
                  style: GoogleFonts.nunito(
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
        );
         },
      
      ) ,
    );
  }
}