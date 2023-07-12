import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/screens/SignInPage.dart';

class SetProfilePage extends StatelessWidget {
  const SetProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF15202B),
      appBar: AppBar(
        leading: Transform.translate(
          offset: Offset(25, 8.0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 28,
            ),
            onPressed: () {
              Navigator.push(
                         context,
                           MaterialPageRoute(
                            builder: (context) => SignInPage(),
                   ),
               );
              
            },
          ),
        ),
        title: Transform.translate(
          offset: Offset(18, 10.0), 
          child: Text(
            'Setup Profile',
            style: GoogleFonts.nunito(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Color(0xFF15202B),
      ),
      body: SingleChildScrollView(
         
      ),
    );
  }
}
