import 'package:flutter/material.dart';
import 'package:nft_app/screens/HomeScreen.dart';

 void main() {
  runApp(const NftApp());
}

class NftApp extends StatelessWidget {
  const NftApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NftApp',
      theme: ThemeData(
         primaryColor: Color(0xFF15202B),
         hintColor : Color(0xFF15202B),


      ),
      home: HomeScreen()
    );
  }
}