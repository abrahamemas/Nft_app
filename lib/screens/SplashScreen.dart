import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/screens/HomeScreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
         Navigator.push(
           context,
             MaterialPageRoute(
              builder: (context) => HomeScreen(),
                ),
               );
      },
      child: Scaffold(
           backgroundColor: Color.fromRGBO(28, 33, 42, 1),
           body: SingleChildScrollView(
              child: Stack(
                children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 280),
                        child: Align(
                           alignment: Alignment.bottomCenter, 
                          child: Container(
                            height: 207,
                            width: 207,
                            child: Image.asset('assets/image17.png')),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(top: 500),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'Hey! Welcome ',
                              style: GoogleFonts.nunito(
                                 color: Colors.white,
                                 fontSize: 32,
                                 fontWeight: FontWeight.w800,
                              ),
                            ),
                        ),
                      ),
                       SizedBox(height: 20,),

                       Padding(
                        padding: const EdgeInsets.only(top: 560),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'Create and Sell your NFT in 1 seconds ',
                              style: GoogleFonts.nunito(
                                 color: Colors.white,
                                 fontSize: 18,
                                 fontWeight: FontWeight.w400,
                              ),
                            ),
                        ),
                      ),

                ],
              ),
    
           ),
      ),
    );
  }
}