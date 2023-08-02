import 'package:flutter/material.dart';

import 'Card1.dart';

class Music extends StatelessWidget {
  const Music({super.key});

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
                              imageAsset: 'assets/Nft19.png',
                               Department: 'Music', 
                               Nftname: 'Hercules!@##',
                                imageAsset2: 'assets/Cele21.jpg',
                                 Hours: '15hr Left',
                                  CelebrityName: 'The Rock       ', 
                                  ethereumAmount: '12,7 ETH',),
                            
                            ),
                        ),
                        
                          Padding(
                          padding: const EdgeInsets.only(top: 40,right: 40),
                          child: Align(
                            alignment: Alignment.center,
                            child:  BigCard(
                              imageAsset: 'assets/Nft21.jpg',
                               Department: 'Music',
                                Nftname: 'Waves335#@',
                                 imageAsset2: 'assets/Cele4.jpg',
                                  Hours: '17hr Left',
                                   CelebrityName: 'Lionel Messi  ',
                                    ethereumAmount: '88,5 ETH',),
                            
                            ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 40,right: 40),
                          child: Align(
                            alignment: Alignment.center,
                            child:  BigCard(
                              imageAsset: 'assets/Nft6.png',
                               Department: 'Music',
                                Nftname: 'PunkMonkey#', 
                                imageAsset2: 'assets/Cele18.jpg', 
                                Hours: '2hr Left',
                                 CelebrityName: 'Rihanna         ', 
                                 ethereumAmount: '30,4 ETH',),
                            
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40,right: 40),
                          child: Align(
                            alignment: Alignment.center,
                            child:  BigCard(
                              imageAsset: 'assets/Nft3.png', 
                              Department: 'Music',
                               Nftname: 'Dweeb2299!@', 
                               imageAsset2: 'assets/Cele22.jpg',
                                Hours: '6hr Left', 
                                CelebrityName: 'Chris Brown  ',
                                 ethereumAmount: '41,4 ETH',),
                            
                            ),
                        ),

                      ],
                    ),
                  ),
                );
  }
}