import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class News3 extends StatefulWidget {
  const News3 ({super.key});

  @override
  State<News3> createState() => _News3State();
}

class _News3State extends State<News3> {
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
                          'assets/Cele24.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                     ),
                      
                       Transform.translate(
                        offset: Offset(28, -10),
                       child: Text(
                        'Mega Sale',
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
                        'Jeff bezos',
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
                        '18,7B',
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
                        '+64,00%',
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