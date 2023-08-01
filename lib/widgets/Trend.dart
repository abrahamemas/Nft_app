import 'package:flutter/material.dart';

import 'Card1.dart';

class Trending extends StatelessWidget {
  const Trending({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                  child: SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 30,),
                        Padding(
                          padding: const EdgeInsets.only(top: 40,right: 40),
                          child: Align(
                            alignment: Alignment.center,
                            child:  BigCard(
                              imageAsset: 'assets/Nft2.png', 
                              Department: 'Art', 
                              Nftname: 'PinkMonkeyXX  ', 
                              imageAsset2: 'assets/Cele14.jpg', 
                              Hours: '8hr Left',
                               CelebrityName: 'Loren Gray      ',
                               ethereumAmount: '10,8 ETH',),
                            
                            ),
                        ),
                        
                          Padding(
                          padding: const EdgeInsets.only(top: 40,right: 40),
                          child: Align(
                            alignment: Alignment.center,
                            child:  BigCard(
                              imageAsset: 'assets/image15.png', 
                              Department: 'Art',
                               Nftname: 'CloneX #1172  ',
                                imageAsset2: 'assets/Cele13.jpg', 
                                Hours: '3hr Left',
                                 CelebrityName: 'Selena gomez ',
                                  ethereumAmount: '18,9 ETH',),
                            
                            ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 40,right: 40),
                          child: Align(
                            alignment: Alignment.center,
                            child:  BigCard(
                              imageAsset: 'assets/Nft22.jpg',
                               Department: 'Music',
                                Nftname: 'Golden@11#   ',
                                 imageAsset2: 'assets/Cele5.jpg', 
                                 Hours: '10hr Left',
                                  CelebrityName: 'Ariana grande ',
                                   ethereumAmount: '11,2 ETH',),
                            
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40,right: 40),
                          child: Align(
                            alignment: Alignment.center,
                            child:  BigCard(
                              imageAsset: 'assets/Nft1.png', 
                              Department: 'Art', 
                              Nftname: 'BeachMonkey#', 
                              imageAsset2: 'assets/Cele10.jpg',
                               Hours: '6hr Left',
                                CelebrityName: 'Kendall jenner',
                                 ethereumAmount: '12,7 ETH',),
                            
                            ),
                        ),

                      ],
                    ),
                  ),
                );
  }
}