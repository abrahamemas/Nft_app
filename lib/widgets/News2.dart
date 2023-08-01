import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class News2 extends StatefulWidget {
  const News2 ({super.key});

  @override
  State<News2> createState() => _News2State();
}

class _News2State extends State<News2> {
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
                          'assets/Cele23.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                     ),
                      
                       Transform.translate(
                        offset: Offset(28, -10),
                       child: Text(
                        'Huge Sale',
                        style:  GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                       ),
                       ),
            
                        Transform.translate(
                        offset: Offset(-42, 10),
                       child: Text(
                        'Mack zuckerberg',
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
                        '14,3B',
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
                        '+44,00%',
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