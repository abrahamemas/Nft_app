import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/screens/OnboardingPage2.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFF15202B),
      body: Stack(
        children: [
         Transform.translate(
            offset: Offset(145, 30),
            child: Image.asset(
            'assets/Logo.png',
            height: 140,
            width: 140,
            ),
            ),
            Padding(
           padding: const EdgeInsets.only(bottom: 645 , right: 300),
           child: Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                   Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OnboardingPage2()),
                   );
              },

              child: Image.asset(
                'assets/Icon Arrow.png',
                 width: 70,
                height: 80,
                ),
            )),
         ),
          
          Positioned.fill(
      top: 150,
      child: Align(
        alignment: Alignment.topCenter,
        child: Image.asset(
          'assets/image10.png',
          width: 207,
          height: 207,
          
        ),
      ),
    ),
     Transform.translate(
              offset: Offset(50, 380),
              child:   Text(
                "Choose your wallet",
                style: GoogleFonts.josefinSans(
                   color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.w800,
                )
                      ),
              ),
                   Transform.translate(
              offset: Offset(55, 410),
              child: Text('\nBy connecting your wallet you agree to\n our Terms of Service and Privacy Policy',
                style: GoogleFonts.josefinSans(
                   color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                ),
              ),
            ),
   






            
   



        ]),

    );
  }
}