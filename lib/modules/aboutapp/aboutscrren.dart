import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/shared/styles/colors.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 220.0,
                foregroundDecoration: const BoxDecoration(
                ),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment(-.2, 0),
                      image: AssetImage(
                          'assets/Images/profile1.jpg'),
                      fit: BoxFit.cover),
                ),

              ),
              const SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 250,
                child: Row(
                  children:  [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: CircleAvatar(
                        radius: 74,
                        backgroundColor: secondColor,
                        child: Text(
                          'CURA',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: firstColor
                          ),
                        ) ,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Container(
                        width: 200,
                        height: 250,
                        decoration: BoxDecoration(
                          border: Border.all(color: firstColor),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'we are medical app\nand we will\ngive you all your'
                                '\nneeds about\nyour health and \nThe diseases you'
                                '\nsuffer from',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                              color: firstColor
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                width: double.infinity,
                //height: 225,
                color: firstColor,
                child: Row(
                  children:  [
                   Stack(
                     alignment: AlignmentDirectional.center,
                     children: [
                       Image(
                           color: secondColor,
                           image: const AssetImage('assets/Images/aboutapp1.png'

                           )
                       ),
                       Text(
                         'Contact us',
                         style: TextStyle(
                           color: firstColor,
                           fontWeight: FontWeight.bold,
                           fontSize: 22.0
                         ),
                       )
                     ],
                   ),
                      const SizedBox(width: 20.0),
                      Expanded(
                        child: InkWell(
                         onTap: (){},
                         child: const Image(image: AssetImage('assets/Images/icons8-facebook-30.png',
                         )

                         ),
                     ),
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        child: InkWell(
                         onTap: (){},
                         child: const Image(image: AssetImage('assets/Images/icon82.png',
                         )

                         ),
                     ),
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        child: InkWell(
                          onTap: (){},
                         child: const Image(image: AssetImage('assets/Images/icon8.png',
                         )

                         ),
                     ),
                      ),










                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
