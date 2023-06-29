import 'package:flutter/material.dart';
import 'package:nft_app/screens/SignInPage.dart';

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
      home: SignInPage() 
    );
  }
}