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
                        child: const Text(
                          'CURA',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
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
                          color: secondColor,
                          border: Border.all(color: Colors.white),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            'we are medical app\nand we will\ngive you all your'
                                '\nneeds about\nyour health and \nThe diseases you'
                                '\nsuffer from',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                              color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                  width: double.infinity,
                  height: 150.0,
                    decoration: BoxDecoration(
                        color: secondColor,
                        borderRadius: BorderRadiusDirectional.circular(20.0),

                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Our app is a medical app ,where you can diagnose your illness within a '
                        'minute ,  and also provide you with corresponding medicine.'
                        'You can also follow up your health throw our app',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white

                        ),
                      ),
                    ),

              ),
                ),
                const SizedBox(height: 20,),
                Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  width: double.infinity,
                  height: 220.0,
                  decoration: BoxDecoration(
                    color: secondColor,
                    borderRadius: BorderRadiusDirectional.circular(20.0),

                  ),
                  child:  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        Text(
                          'How to use cura?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                              color: Colors.greenAccent

                          ),
                        ),
                        Text(
                          '1.regist in our app\n2.choose model gender\n3.Select your illness area in the model.\n'
                          '4. Select the symptoms you have.\n5. Finally you will receive a report which have the name of diseases and its corresponding medicine',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white

                          ),
                        ),
                      ],
                    )
                  ),

                ),
              ),
                const SizedBox(height: 20,),
                Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  width: double.infinity,
                  height: 230.0,
                  decoration: BoxDecoration(
                    color: secondColor,
                    borderRadius: BorderRadiusDirectional.circular(20.0),

                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'NOTE',
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.greenAccent

                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('If you Select an urgent area such as (brain, heart, etc.) '
                            'The app will ask you to open your location so that it can reach you to the nearest doctor or hospital.'
                            ' Because any pain in such area the app can not diagnose the reason for it',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.white
                          ),
                          textAlign: TextAlign.start,),
                      )
                    ],
                  )

                ),
              ),





            ],
          ),
        ),
      ),
    );
  }
}
