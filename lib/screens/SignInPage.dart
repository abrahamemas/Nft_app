import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/screens/OnboardingPage2.dart';
import 'package:nft_app/screens/SetProfile.dart';

import '../Buttons/Button.dart';
import '../Buttons/Button2.dart';
import '../Buttons/CustomButton3.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF15202B),

      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: LayoutBuilder(
            builder: (context, constraints) {
              final double logoSize = constraints.maxWidth * 0.4;
              final double arrowSize = constraints.maxWidth * 0.15;

              return Stack(
                children: [
                  Positioned(
                    top: constraints.maxHeight * 0.0,
                    left: constraints.maxWidth * 0.32,
                    child: Image.asset(
                      'assets/Logo.png',
                      height: logoSize.isFinite ? logoSize : 0.0,
                      width: logoSize.isFinite ? logoSize : 0.0,
                    ),
                  ),
                  Positioned(
                    top: constraints.maxHeight * 0.06,
                    right: constraints.maxWidth * 0.82,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OnboardingPage2(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'assets/Icon Arrow.png',
                        height: arrowSize.isFinite ? arrowSize : 0.0,
                        width: arrowSize.isFinite ? arrowSize : 0.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 520),
                    child: Align(
                      alignment: Alignment.bottomCenter,      
                      child: Container(
                        height: 200,
                        child: Image.asset(
                          'assets/image10.png',
                          width: constraints.maxWidth * 0.6,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: constraints.maxHeight * 0.39,
                    left: constraints.maxWidth * 0.1,
                    child: Text(
                      "Choose your wallet",
                      style: GoogleFonts.nunito(
                        color: Colors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Positioned(
                    top: constraints.maxHeight * 0.47,
                    left: constraints.maxWidth * 0.05,
                    right: constraints.maxWidth * 0.08,
                    child: Text(
                      'By connecting your wallet you agree to\nour Terms of Service and Privacy Policy',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                        color: Colors.white,
                        fontSize: constraints.maxWidth * 0.038,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: constraints.maxHeight * 0.03,
                    left: constraints.maxWidth * 0.1,
                    right: constraints.maxWidth * 0.1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          height: 60.0,
                          child: CustomButton3(
                            text: 'MetaMask',
                            onPressed: () {
                              showBottomSheet(
                                context: context,
                                backgroundColor: Colors.transparent,
                                builder: ((context) {
                                  return Stack(
                                    children: [
                                      Container(
                                          color: Color.fromRGBO(150, 187, 250, 0.137),
                                        height: MediaQuery.of(context).size.height, 
                                        width: MediaQuery.of(context).size.width, 
                                       child:  Align(
                                        alignment: Alignment.bottomCenter,
                                         child: Container(
                                                 height: 280,
                                                  width: 600,
                                                 decoration: BoxDecoration(
                                          color: Color.fromARGB(255, 26, 41, 56),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(25),
                                            topRight: Radius.circular(25),
                                          ),
                                         ),
                                                                             child: Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(bottom: 210, right: 80),
                                              child: Align(
                                                alignment: Alignment.bottomCenter,
                                                child: Container(
                                                  child: Text(
                                                    "Enter MetaMask address",
                                                    style: GoogleFonts.nunito(
                                                      color: Colors.white,
                                                      fontSize: 24,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(bottom: 130, right: 4),
                                              child: Align(
                                                alignment: Alignment.bottomCenter,
                                                child: SizedBox(
                                                  width: 350,
                                                  height: 60,
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                      labelText: 'Address',
                                                      filled: true,
                                                      fillColor: Color(0xFF253341),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: Colors.white,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(10.0),
                                                      ),
                                                      enabledBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: Colors.white,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(10.0),
                                                      ),
                                                    ),
                                                    style: TextStyle(color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 30),
                                              child: Align(
                                                alignment: Alignment.bottomCenter,
                                                child: SizedBox(
                                                  width: 350,
                                                  height: 50,
                                                  child: Button2(
                                                    text: 'Confirm',
                                                    onPressed: () {
                                                       Navigator.push(
                                                          context,
                                                           MaterialPageRoute(
                                                            builder: (context) => SetProfilePage(),
                                                           ),
                                                     );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                                                             ),
                                                                           ),
                                       ) ,
                                          
                                      ),
                                   


                                    ],
                                  );
                                }),
                              );
                            },
                            imageAsset: 'assets/image11.png',
                          ),
                        ),
                        SizedBox(height: 20.0),
                        SizedBox(
                          height: 60.0,
                          child: CustomButton3(
                            text: 'Trust Wallet',
                            onPressed: () {
                              showBottomSheet(
                                context: context,
                                backgroundColor: Colors.transparent,
                                builder: ((context) {
                                  return Stack(
                                    children: [
                                      Container(
                                          color: Color.fromRGBO(150, 187, 250, 0.137),
                                         height: MediaQuery.of(context).size.height, 
                                        width: MediaQuery.of(context).size.width,         

                                        child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                            height: 280,
                                            width: 600,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF15202B),
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(25),
                                                topRight: Radius.circular(25),
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(bottom: 210, right: 50),
                                                  child: Align(
                                                    alignment: Alignment.bottomCenter,
                                                    child: Container(
                                                      child: Text(
                                                        "Enter Trust Wallet address",
                                                        style: GoogleFonts.nunito(
                                                          color: Colors.white,
                                                          fontSize: 24,
                                                          fontWeight: FontWeight.w600,
                                        
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(bottom: 130, right: 4),
                                                  child: Align(
                                                    alignment: Alignment.bottomCenter,
                                                    child: SizedBox(
                                                      width: 350,
                                                      height: 60,
                                                      child: TextField(
                                                        decoration: InputDecoration(
                                                          labelText: 'Address',
                                                          filled: true,
                                                          fillColor: Color(0xFF253341),
                                                          focusedBorder: OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                              color: Colors.white,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius: BorderRadius.circular(10.0),
                                                          ),
                                                          enabledBorder: OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                              color: Colors.white,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius: BorderRadius.circular(10.0),
                                                          ),
                                                        ),
                                                        style: TextStyle(color: Colors.white),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(bottom: 30),
                                                  child: Align(
                                                    alignment: Alignment.bottomCenter,
                                                    child: SizedBox(
                                                      width: 350,
                                                      height: 50,
                                                      child: Button2(
                                                        text: 'Confirm',
                                                        onPressed: () {
                                                          Navigator.push(
                                                          context,
                                                           MaterialPageRoute(
                                                            builder: (context) => SetProfilePage(),
                                                           ),
                                                     );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                              );
                            },
                            imageAsset: 'assets/image12.png',
                          ),
                        ),
                        SizedBox(height: 20.0),
                        SizedBox(
                          height: 60.0,
                          child: CustomButton3(
                            text: 'Enter ethereum address',
                            onPressed: () {
                              showBottomSheet(
                                context: context,
                                backgroundColor: Colors.transparent,
                                builder: ((context) {
                                  return Stack(
                                    children: [
                                      Container(
                                        color: Color.fromRGBO(150, 187, 250, 0.137),
                                         height: MediaQuery.of(context).size.height, 
                                        width: MediaQuery.of(context).size.width,
                                        child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                            height: 280,
                                            width: 600,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF15202B),
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(25),
                                                topRight: Radius.circular(25),
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(bottom: 210, right: 80),
                                                  child: Align(
                                                    alignment: Alignment.bottomCenter,
                                                    child: Container(
                                                      child: Text(
                                                        "Enter ethereum address",
                                                        style: GoogleFonts.nunito(
                                                          color: Colors.white,
                                                          fontSize: 24,
                                                          fontWeight: FontWeight.w600,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(bottom: 130, right: 4),
                                                  child: Align(
                                                    alignment: Alignment.bottomCenter,
                                                    child: SizedBox(
                                                      width: 350,
                                                      height: 60,
                                                      child: TextField(
                                                        decoration: InputDecoration(
                                                           labelText: 'Address',
                                                          filled: true,
                                                          fillColor: Color(0xFF253341),
                                                          focusedBorder: OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                              color: Colors.white,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius: BorderRadius.circular(10.0),
                                                          ),
                                                          enabledBorder: OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                              color: Colors.white,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius: BorderRadius.circular(10.0),
                                                          ),
                                                        ),
                                                        style: TextStyle(color: Colors.white),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(bottom: 30),
                                                  child: Align(
                                                    alignment: Alignment.bottomCenter,
                                                    child: SizedBox(
                                                      width: 350,
                                                      height: 50,
                                                      child: Button2(
                                                        text: 'Confirm',
                                                        onPressed: () {
                                                          Navigator.push(
                                                          context,
                                                           MaterialPageRoute(
                                                            builder: (context) => SetProfilePage(),
                                                           ),
                                                     );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                              );
                            },
                            imageAsset: 'assets/image13.png',
                          ),
                        ),
                        SizedBox(height: 60.0),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: SizedBox(
                            height: 50.0,
                            child: Button(
                              text: 'Continue',
                              onPressed: () {
                                showBottomSheet(
                                  context: context,
                                  backgroundColor: Colors.transparent,
                                  builder: ((context) {
                                    return Stack(
                                      children: [
                                        Container(
                                          color: Color.fromRGBO(150, 187, 250, 0.137),
                                           height: MediaQuery.of(context).size.height, 
                                          width: MediaQuery.of(context).size.width,
                                          child: Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                              height: 280,
                                              width: 600,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF15202B),
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(25),
                                                  topRight: Radius.circular(25),
                                                ),
                                              ),
                                              child: Stack(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(bottom: 210, right: 80),
                                                    child: Align(
                                                      alignment: Alignment.bottomCenter,
                                                      child: Container(
                                                        child: Text(
                                                          "Enter ethereum address",
                                                          style: GoogleFonts.nunito(
                                                            color: Colors.white,
                                                            fontSize: 24,
                                                            fontWeight: FontWeight.w600,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(bottom: 130, right: 4),
                                                    child: Align(
                                                      alignment: Alignment.bottomCenter,
                                                      child: SizedBox(
                                                        width: 350,
                                                        height: 60,
                                                        child: TextField(
                                                          decoration: InputDecoration(
                                                            labelText: 'Address',
                                                            filled: true,
                                                            fillColor: Color(0xFF253341),
                                                            focusedBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                color: Colors.white,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius: BorderRadius.circular(10.0),
                                                            ),
                                                            enabledBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                color: Colors.white,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius: BorderRadius.circular(10.0),
                                                            ),
                                                          ),
                                                          style: TextStyle(color: Colors.white),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(bottom: 30),
                                                    child: Align(
                                                      alignment: Alignment.bottomCenter,
                                                      child: SizedBox(
                                                        width: 350,
                                                        height: 50,
                                                        child: Button2(
                                                          text: 'Confirm',
                                                          onPressed: () {
                                                            Navigator.push(
                                                            context,
                                                             MaterialPageRoute(
                                                              builder: (context) => SetProfilePage(),
                                                             ),
                                                       );
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  }),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
