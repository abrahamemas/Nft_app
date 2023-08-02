import 'package:flutter/material.dart';

import 'Card1.dart';

class Art extends StatelessWidget {
  const Art({super.key});

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
                              imageAsset: 'assets/Nft14.jpg',
                               Department: 'Art',
                                Nftname: 'Captain123!@   ',
                                 imageAsset2: 'assets/Cele8.jpg', 
                                 Hours: '3hr Left', 
                                 CelebrityName: 'Davidbeckham', 
                                 ethereumAmount: '16,3 ETH',),
                            
                            ),
                        ),
                        
                          Padding(
                          padding: const EdgeInsets.only(top: 40,right: 40),
                          child: Align(
                            alignment: Alignment.center,
                            child:  BigCard(
                              imageAsset: 'assets/Nft10.jpg', 
                              Department: 'Art',
                               Nftname: 'Smokers334##',
                                imageAsset2: 'assets/Cele7.jpg', 
                                Hours: '7hr Left', 
                                CelebrityName: 'Taylor swift    ',
                                 ethereumAmount: '13,5 ETH',),
                            
                            ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 40,right: 40),
                          child: Align(
                            alignment: Alignment.center,
                            child:  BigCard(
                              imageAsset: 'assets/Nft16.jpg',
                               Department: 'Art',
                                Nftname: 'Hybrid11@##', 
                                imageAsset2: 'assets/Cele12.jpg',
                                 Hours: '18hr Left', 
                                 CelebrityName: 'Garfield         ',
                                  ethereumAmount: '19,3 ETH',),
                            
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40,right: 40),
                          child: Align(
                            alignment: Alignment.center,
                            child:  BigCard(
                              imageAsset: 'assets/Nft20.jpg',
                               Department: 'Art', 
                               Nftname: 'HeruGod!@##',
                                imageAsset2: 'assets/Celeb1.jpg', 
                                Hours: '12hr Left',
                                 CelebrityName: 'Snoop dogg    ', 
                                 ethereumAmount: '44,9 ETH',),
                            
                            ),
                        ),

                      ],
                    ),
                  ),
                );
  }
}