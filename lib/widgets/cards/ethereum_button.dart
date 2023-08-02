import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class EthereumButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 42,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFAAB8C2), width: 1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 5),
              SvgPicture.asset(
                'assets/logos_ethereum.svg',
                height: 30,
              ),
              SizedBox(width: 8),
              
              Transform.translate(
                offset: Offset(2, -1.8),
                child: Text(
                  '26,031',
                  style: GoogleFonts.nunito(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
              
                ),
              ),
               
               SizedBox(width: 8),
            ],
          ),
        ),
        Positioned(
          bottom: -2, 
          left: 0,
          right: 0,
          child: FractionallySizedBox(
            widthFactor: 0.6, 
            alignment: Alignment.center,
            child: Container(
              height: 13.8, 
              decoration: BoxDecoration(
                color: Color.fromRGBO(21, 32, 43, 1), 
              
              ),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Text(
                  'Balance',
                  style: GoogleFonts.nunito(
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
