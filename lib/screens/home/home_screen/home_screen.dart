import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nft_app/widgets/Card1.dart';
import 'package:nft_app/widgets/EthereumButton.dart';
import 'package:nft_app/widgets/News.dart';

import '../widgets/Art.dart';
import '../widgets/Gaming.dart';
import '../widgets/Music.dart';
import '../widgets/New3.dart';
import '../widgets/News2.dart';
import '../widgets/TapButton.dart';
import '../widgets/Trend.dart';
import '../widgets/UsersProfil.dart';

class HomeScreen extends StatefulWidget {
  final File? userProfileImage;

  const HomeScreen({Key? key, this.userProfileImage}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  File? profilePicture;
  String selectedTab = 'Trending';

  @override
  void initState() {
    super.initState();
    profilePicture = widget.userProfileImage;
  }

  Widget _buildSelectedContent() {
    switch (selectedTab) {
       case 'Trending':
        return Trending();
      case 'Art':
        return Art();
      case 'Gaming':
        return Gaming();
       
      case 'Music':
        return Music();

      default:
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: 30),
              Padding(
                padding: const EdgeInsets.only(top: 40, right: 40),
                child: Align(
                  alignment: Alignment.center,
                  child: BigCard(imageAsset: 'assets/Nft2.png', Department: '', Nftname: '', imageAsset2: '', Hours: '', CelebrityName: '', ethereumAmount: '',),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, right: 40),
                child: Align(
                  alignment: Alignment.center,
                  child: BigCard(imageAsset: 'assets/image15.png', Department: '', Nftname: '', imageAsset2: '', Hours: '', CelebrityName: '', ethereumAmount: '',),
                ),
              ),
        
            ],
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(21, 32, 43, 1),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.translate(
                      offset: Offset(-88, -33),
                      child: EthereumButton(),
                    ),
                    Transform.translate(
                      offset: Offset(88, -30),
                      child: ProfilePictureWidget(
                        image: profilePicture,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3),
                Container(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width: 25),
                      TapableButton(
                        text: 'Trending',
                        onPressed: () {
                          setState(() {
                            selectedTab = 'Trending';
                          });
                        },
                      ),
                      SizedBox(width: 10),
                      SizedBox(
                        width: 93,
                        child: TapableButton(
                          text: 'Art',
                          onPressed: () {
                            setState(() {
                              selectedTab = 'Art';
                            });
                          },
                        ),
                      ),
                      SizedBox(width: 10),
                      SizedBox(
                        width: 115,
                        child: TapableButton(
                          text: 'Gaming',
                          onPressed: () {
                            setState(() {
                              selectedTab = 'Gaming';
                            });
                          },
                        ),
                      ),
                      SizedBox(width: 13),
                      SizedBox(
                        width: 100,
                        child: TapableButton(
                          text: 'Music',
                          onPressed: () {
                            setState(() {
                              selectedTab = 'Music';
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                _buildSelectedContent(), 
             
              ],

            ),
               Transform.translate(
                  offset: Offset(30, 680),
                  child: Text(
                    'Trending Collections',
                    style: GoogleFonts.nunito(
                      color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                  
                    
                 ), )),
                 Padding(
                   padding: const EdgeInsets.only(top: 728),
                   child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SingleChildScrollView(
                       scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          News(),
                          SizedBox(width: 30,),
                          News2(),
                          SizedBox(width: 48,),
                          News3(),
                          SizedBox(width: 65,)


                        ],
                      )),
                   ),
                 ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Color(0xFF253341),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
          child: GNav(
            backgroundColor: Color(0xFF253341),
            color: Color(0xFFAAB8C2),
           
            activeColor: const Color(0xFF1D9BF0),
            gap: 8,
            padding: EdgeInsets.all(16),
            tabs: [
              
              GButton(
                icon: Icons.home,
                text: 'Home',
                iconSize: 30,
                ),
                GButton(
                icon: Icons.search,
                text: 'Search',
                 iconSize: 30,
                ),
                GButton(
                icon: Icons.trending_up,
                text: 'Stats',
                 iconSize: 30,
                ),
                GButton(
                icon: Icons.account_circle,
                text: 'Profile',
                 iconSize: 30,
                ),
        
        
        
        
          ],
           
            ),
        ),
      ),
    );
  }
}
