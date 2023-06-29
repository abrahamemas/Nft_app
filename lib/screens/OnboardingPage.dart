
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/screens/IntroScreen1.dart';
import 'package:nft_app/screens/OnboardingPage2.dart';
import 'package:nft_app/screens/introScreen3.dart';
import 'package:nft_app/screens/introscreen2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/CustomButton.dart';


class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  PageController _controller = PageController(initialPage: 0);
  final int totalPages = 3;
    @override
  void initState() {
    super.initState();
    _controller = PageController();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller, 
            children: [
              IntroScreen1(),
              IntroScreen2(),
              IntroScreen3(),
            ],
          ),
          Stack(
            children: [
              Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 400,
                height: 350,
                decoration: BoxDecoration(
                  color: const Color(0xFF253341),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22.0),
                    topRight: Radius.circular(22.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 6),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(       
                     child: SmoothPageIndicator(
                        controller: _controller,
                        count: 3,
                        effect: JumpingDotEffect(
                          activeDotColor: Colors.white,
                          dotColor: Color(0xFF15202B),
                          dotHeight: 10,
                          dotWidth: 10,
                          verticalOffset: 20,
                        ),
                      ),
                      
                    ),
                          
                  ),
                ),
              ),
            ),
            
          AnimatedBuilder(
       animation: _controller,
       builder: (context, child) {
      final double value = _controller.page ?? 0.0;
       String textToShow = "";

    if (value < 0.3) {
      textToShow = "\nDiscover largest\nNFT marketplace";
    } else if (value < 1.5) {
       textToShow = "\nStart your own\nNFT gallery now";
    } else {
       textToShow = "\nDiscovering the\nworld of crypto art";
    }

    return Padding(
      padding: EdgeInsets.only(bottom: 235),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          child: Text(
            textToShow,
            style: GoogleFonts.josefinSans(
              color: Colors.white,
              fontSize: 34,
              fontWeight: FontWeight.w800,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  },
),
          
            Padding(
              padding:  EdgeInsets.only(bottom: 200),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  child : 
                    Text(
                "Buy and sell digital items",
                style: GoogleFonts.josefinSans(
                   color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                )
                      )
                  ,
                ),
              ),
            ),

             
Padding(
  padding: EdgeInsets.only(bottom: 30),
  child: Align(
    alignment: Alignment.bottomCenter,
    child: SizedBox(
      width: 350,
      height: 50,
      child: CustomButton(
        text: 'Next',
        onPressed: () {
          if (_controller.hasClients) {
            final currentPage = _controller.page!.toInt();
            final nextPage = currentPage + 1;

            if (nextPage < totalPages) {
              _controller.animateToPage(
                nextPage,
                duration: const Duration(milliseconds: 620),
                curve: Curves.easeInOut,
              );
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OnboardingPage2()),
              );
            }
          }
        },
      ),
    ),
  ),
),

     



            ],
          ),

        ],
      ),
      
    );
  }
}
