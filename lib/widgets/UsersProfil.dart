import 'dart:io';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePictureWidget extends StatelessWidget {
  final File? image;

  ProfilePictureWidget({required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      
      },
      child: Container(
        width: 70,
        height: 70,
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
    );
  }
}
