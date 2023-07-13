import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nft_app/screens/SignInPage.dart';
import 'package:nft_app/screens/SplashScreen.dart';

import '../Buttons/Button2.dart';

class SetProfilePage extends StatefulWidget {
  const SetProfilePage({Key? key}) : super(key: key);

  @override
  State<SetProfilePage> createState() => _SetProfilePageState();
}

class _SetProfilePageState extends State<SetProfilePage> {
  File? image;

 Future<void> pickImage() async {
  try {
    final pickedImage = await ImagePicker().getImage(source: ImageSource.gallery);

    if (pickedImage == null) {
      print('No image picked');
      return;
    }

    final imageTemporary = File(pickedImage.path);
    setState(() {
      image = imageTemporary;
    });
  } catch (e) {
    print('Failed to pick image: $e');
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(21, 32, 43, 1),
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
        backgroundColor: Color.fromRGBO(21, 32, 43, 1),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Transform.translate(
              offset: Offset(30, 50),
              child: Text(
                'Upload Photo Profile',
                style: GoogleFonts.nunito(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
             Transform.translate(
                  offset: Offset(30, 88),
                  child: GestureDetector(
                    onTap: pickImage,
                    child: Container(
                      width: 165,
                      height: 165,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: ClipOval(
                        child: image != null
                            ? Image.file(
                                image!,
                                fit: BoxFit.cover,
                              )
                            : Image.asset('assets/image14.png'),
                      ),
                    ),
                  ),
                ),



               Padding(
                 padding: const EdgeInsets.only(top: 135, right: 20),
                 child: Align(
                  alignment: Alignment.centerRight,
                 
                    child: GestureDetector(
                      onTap: pickImage,
                      child: Container(
                        width: 180,
                        height: 58,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            side: BorderSide(color: Colors.white),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: pickImage,
                          child: Text(
                            image != null ? 'Change Profile' : 'Upload Profile',
                            style: GoogleFonts.nunito(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
               ),
            
             SizedBox(height: 300,),
              Padding(
                padding: const EdgeInsets.only(top: 300,),
                child: Align(
                   alignment: Alignment.bottomCenter, 
                  child: SizedBox(
                    width: 338,
                    height: 60,
                    child: TextField(
                              decoration: InputDecoration(
                                   labelText: '  Username',
                                     labelStyle: GoogleFonts.nunito(
                                    color: Colors.white,
                                    fontSize: 12,
                                     fontWeight: FontWeight.w400,
                                     ),
                                       filled: true,
                                       fillColor: Color.fromRGBO(37, 51, 65, 1), 
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color.fromRGBO(37, 51, 65, 1),
                                              width: 2.0,
                                           ),
                                               borderRadius: BorderRadius.circular(10.0),
                                          ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                          color: Color.fromRGBO(37, 51, 65, 1),
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
                padding: const EdgeInsets.only(top: 400,),
                child: Align(
                   alignment: Alignment.bottomCenter, 
                  child: SizedBox(
                    width: 338,
                    height: 60,
                    child: TextField(
                              decoration: InputDecoration(
                                   labelText: '   Email',
                                    labelStyle: GoogleFonts.nunito(
                                    color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      ),
                                       filled: true,
                                       fillColor: Color.fromRGBO(37, 51, 65, 1),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color.fromRGBO(37, 51, 65, 1),
                                              width: 2.0,
                                           ),
                                               borderRadius: BorderRadius.circular(10.0),
                                          ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                          color: Color.fromRGBO(37, 51, 65, 1), 
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
  padding: const EdgeInsets.only(top: 480, left: 35),
  child: Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      height: 400,
      width: 600, 
      child: Padding(
        padding: const EdgeInsets.only(right: 40, top: 20),
        child: TextField(
          minLines: 4,
          maxLines: 25,
          decoration: InputDecoration(
            labelText: '  Bio',
            labelStyle: GoogleFonts.nunito(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            filled: true,
            fillColor: Color.fromRGBO(37, 51, 65, 1),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(37, 51, 65, 1),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(37, 51, 65, 1),
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
),

    Padding(
         padding: const EdgeInsets.only(top: 660),
            child: Align(
             alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 350,
                   height: 50,
                    child: Button2(
                     text: 'Submit',
                     onPressed: () {
                      Navigator.push(
                        context,
                         MaterialPageRoute(
                          builder: (context) => WelcomeScreen(),
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
    );
  }
}
