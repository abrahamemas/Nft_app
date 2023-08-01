import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton3 extends StatelessWidget {
  final String imageAsset;
  final String text;
  final VoidCallback onPressed;
  const CustomButton3({super.key, required this.text, required this.onPressed, required this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed,
    style: ButtonStyle(
      
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF253341)
      
),    
       padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(horizontal: 30)),
       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13.0),
            
          ),
       ),
       
    ),
    
    
    
     child: Row(
          children: [
            Container(
               height: 40,
              width: 40,
              child: Image.asset(
                imageAsset),
            ),
            SizedBox(width: 15,),
            Text(text,style:   GoogleFonts.nunito(
fontSize: 14,
fontWeight: FontWeight.w600,
),)

          ],
     )
);
  }
}