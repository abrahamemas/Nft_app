import 'package:animated_glitch/animated_glitch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/widgets/LikeIcon.dart'; 


class BigCard extends StatefulWidget {
  late final String imageAsset;
  final String CelebrityName;
  final String ethereumAmount;
  final String imageAsset2;
  final String Hours;
  final String Nftname;
  final String Department;
  
  BigCard({super.key,required this.imageAsset, required this.Department, required this.imageAsset2, required this.Nftname, required this.Hours, required this.CelebrityName, required this.ethereumAmount});

  @override
  State<BigCard> createState() => _BigCardState();
}

class _BigCardState extends State<BigCard> {
   bool isTapped = false;

  void _toggle() {
    setState(() {
      isTapped= !isTapped;
    });
  }
  final _controller = AnimatedGlitchController(
  frequency: const Duration(milliseconds: 200),
  level: 1.2,
  distortionShift: const DistortionShift(count: 3),
);
  










  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Transform.translate(
          offset: Offset(0, -10),
          child: Container(
            width: 305,
            height: 405,
            decoration: BoxDecoration(
              color: Color(0xFF253341),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Transform.translate(
              offset: Offset(0, -45),
              child: Center(
                  child: Container(
                    width: 270,
                    height: 280,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15), 
                    
                    ),
                   child:  AnimatedGlitch(
                    
                     controller: _controller,
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(15), 
                          child: Image.asset(
                            widget.imageAsset,
                            fit: BoxFit.cover,
                          ),
                        ),
                   ),
                 ),
                  ),
                ),
              ),
        ),
          
        
        Transform.translate(
          offset: Offset(30, 18),
          child: Container(
            width: 60,
            height: 26,
            decoration: BoxDecoration(
              color:  Color.fromARGB(129, 49, 59, 69),
              borderRadius: BorderRadius.circular(8),
            ),
            child : Center(
              child: Text(widget.Department,
              style: GoogleFonts.nunito(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              ),
            )
        
          ),
        ),
       
       Transform.translate(
         offset: Offset(240, 18),
         child: LikeHeartIcon(),
       ),

       Padding(
         padding: const EdgeInsets.only(top: 303,),
         child: Align(
          alignment: Alignment.bottomCenter,
           child: Row(
            children: [
              SizedBox(width: 20,),
              Text(
                widget.Nftname,
                 style: GoogleFonts.nunito(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
              ),
                 SizedBox(width: 45,),

             Icon(
                  Icons.access_time,
                      color: Color(0xFFAAB8C2),
                        size: 15.0,
                 ),
                SizedBox(width: 10,),

                Text(
                  widget.Hours,
                  style: GoogleFonts.nunito(
                    color: Color(0xFFAAB8C2),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
            ],
           ),
         ),
       ),

       Padding(
         padding: const EdgeInsets.only(top: 340),
         child: Align(
          alignment: Alignment.bottomCenter,
           child: Row(
             children: [
               SizedBox(width: 20,),
               Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                      child: Image.asset(
                        widget.imageAsset2,
                        fit: BoxFit.cover,
                      ),
                    ),
               ),
               SizedBox(width: 20,),
               Text(
                widget.CelebrityName,
                style: GoogleFonts.nunito(
                    color: Color(0xFFAAB8C2),
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                  ),
               ),
       SizedBox(width: 8,),
           GestureDetector(
             onTapDown: (_) {
        _toggle();
      },
      onTapCancel: () {
        if (mounted) {
          setState(() {
            isTapped = false;
          });
        }
      },
             child: Container(
              height: 35,
                     padding: EdgeInsets.all(10),
                     decoration: BoxDecoration(
              border: Border.all(color: isTapped ? Colors.blue : Color(0xFFAAB8C2), width: 1),
              borderRadius: BorderRadius.circular(12),
                     ),
                     child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 2),
                SvgPicture.asset(
                  'assets/logos_ethereum.svg',
                  height: 30,
                ),
                SizedBox(width: 3),
                
                Transform.translate(
                  offset: Offset(2, -1),
                  child: Text(
                    widget.ethereumAmount,
                    style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                    ),
                
                  ),
                ),
                 
                 SizedBox(width: 2),
              ],
                     ),
                   ),
           ),




             ],
           ),
         ),
       ),
      



      ],
    );
  }
}
