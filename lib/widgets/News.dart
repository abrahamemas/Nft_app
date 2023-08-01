import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class News extends StatefulWidget {
  const News ({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Stack(
        children: [
          Container(
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                  SizedBox(width: 30,),
                     Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/Cele20.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                     ),
                      
                       Transform.translate(
                        offset: Offset(28, -10),
                       child: Text(
                        'Biggest Sale',
                        style:  GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                       ),
                       ),
            
                        Transform.translate(
                        offset: Offset(-60, 10),
                       child: Text(
                        'Elon Musk',
                        style:  GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                       ),
                       ),
                        Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    
                    Transform.translate(
                      offset: Offset(78, -10),
                      child: SvgPicture.asset(
                        'assets/logos_ethereum.svg',
                        height: 20,
                      ),
                    ),
                    SizedBox(width: 8),
                      Transform.translate(
                      offset: Offset(80,-10),
                      child: Text(
                        '21,4B',
                        style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                    
                      ),
                    ),
                    
                    Transform.translate(
                      offset: Offset(30,13),
                      child: Text(
                        '+23,00%',
                        style: GoogleFonts.nunito(
                          color: Colors.green,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                    
                      ),
                    ),
                     
                     SizedBox(width: 8),
                  ],
                ),
            
            
              ],
          
            ),
          ),
        ],
      ),
    );
  }
}