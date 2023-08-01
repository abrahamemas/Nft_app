import 'package:flutter/material.dart';

import 'Card1.dart';

class Gaming extends StatelessWidget {
  const Gaming({super.key});

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
                              imageAsset: 'assets/Nft9.png',
                               Department: 'Gaming',
                                Nftname: 'Cyberpunk99#',
                                 imageAsset2: 'assets/Cele19.jpg', 
                                 Hours: '16hr Left',
                                  CelebrityName: '50 Cent           ',
                                   ethereumAmount: '30,7 ETH',),
                            
                            ),
                        ),
                        
                          Padding(
                          padding: const EdgeInsets.only(top: 40,right: 40),
                          child: Align(
                            alignment: Alignment.center,
                            child:  BigCard(
                              imageAsset: 'assets/Nft7.png', 
                              Department: 'Gaming', 
                              Nftname: 'UK Gang5@##',
                               imageAsset2: 'assets/Cele17.jpg',
                                Hours: '2hr Left', 
                                CelebrityName: 'J.cole               ',
                                 ethereumAmount: '24,8 ETH',),
                            
                            ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 40,right: 40),
                          child: Align(
                            alignment: Alignment.center,
                            child:  BigCard(imageAsset: 'assets/Nft11.jpeg',
                             Department: 'Gaming',
                              Nftname: 'Robot443%##', 
                              imageAsset2: 'assets/Cele15.jpg',
                               Hours: '1hr Left',
                                CelebrityName: 'Lebron James',
                                 ethereumAmount: '50,4 ETH',),
                            
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40,right: 40),
                          child: Align(
                            alignment: Alignment.center,
                            child:  BigCard(
                              imageAsset: 'assets/Nft5.png', 
                              Department: 'Gaming',
                               Nftname: 'RockRoll22@#',
                                imageAsset2: 'assets/Cele3.jpg',
                                 Hours: '4hr Left',
                                  CelebrityName: 'Emma watson ',
                                   ethereumAmount: '9,2 ETH',),
                            
                            ),
                        ),

                      ],
                    ),
                  ),
                );
  }
}