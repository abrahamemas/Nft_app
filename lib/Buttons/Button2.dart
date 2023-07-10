import 'package:flutter/material.dart';

class Button2 extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const Button2({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed,
    style: ButtonStyle(
      
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF1D9BF0)
),
       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
       ),
       
    ),
    
    
    
     child: Text(text,style:   TextStyle(
fontSize: 14,
fontWeight: FontWeight.w600,
),));
  }
}