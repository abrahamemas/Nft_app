import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TapableButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed; // Callback function

  TapableButton({required this.text, required this.onPressed});

  @override
  _TapableButtonState createState() => _TapableButtonState();
}

class _TapableButtonState extends State<TapableButton> {
  // ignore: unused_field
  bool _isTapped = false;

  void _handleTap() {
    setState(() {
      _isTapped = true;
    });

    Future.delayed(Duration(milliseconds: 700), () {
      if (mounted) {
        setState(() {
          _isTapped = false;
        });
      }
    });

    
    widget.onPressed();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        _handleTap();
      },
      onTapCancel: () {
        if (mounted) {
          setState(() {
            _isTapped = false;
          });
        }
      },
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.blue;
              }
              return const Color(0xFF253341); 
            },
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.0),
            ),
          ),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: GoogleFonts.nunito(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
    );
  }
}
