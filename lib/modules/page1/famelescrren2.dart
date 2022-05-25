import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/modules/symptoms/desiase.dart';
import 'package:graduationproject/shared/components/component.dart';

import '../../layout/widget/textfield.dart';
import '../../shared/styles/colors.dart';

class FemaleScreenRotate extends StatelessWidget {
  const FemaleScreenRotate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: seccolor,
        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(top: 20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(title: 'Choose a place for pain',color: pramcolor,fontSize: 25,alignment: Alignment.center),
                 SizedBox(height: 10,),
                  Container(
                   color: pramcolor,
                    width: double.infinity,
                    height: 630,
                    child: Column(
                      children: [
                        InkWell(
                          onTap: (){
                            navigatto(context, Diseases(id: 2));
                          },
                          child: const Image(
                            color: Colors.white,
                            image: AssetImage('assets/Images/backbone1.png'),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            InkWell(
                              child: const Image(
                                image: AssetImage('assets/Images/backbone2.png'),

                              ),
                              onTap: (){
                                navigatto(context,  const Diseases(id: 4,));

                              },
                            ),
                            InkWell(
                              child: const Image(
                                image: AssetImage('assets/Images/backbone3.png'),
                              ),
                              onTap: (){
                                navigatto(context,  const Diseases(id: 7,));


                              },
                            ),
                            InkWell(
                              child: const Image(
                                image: AssetImage('assets/Images/backbone4.png'),
                              ),
                              onTap: (){
                                navigatto(context,  const Diseases(id: 7,));

                              },
                            ),
                            InkWell(
                              child: const Image(
                                image: AssetImage('assets/Images/backbone5.png'),
                              ),
                              onTap: (){
                                navigatto(context,  const Diseases(id: 4,));

                              },
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            InkWell(
                              child: const Image(
                                image: AssetImage('assets/Images/backbone6.png'),

                              ),
                              onTap: (){
                                navigatto(context,  const Diseases(id: 4,));

                              },
                            ),
                            InkWell(
                              child: const Image(
                                image: AssetImage('assets/Images/backbone7.png'),
                              ),
                              onTap: (){

                                navigatto(context,  const Diseases(id: 9,));

                              },
                            ),
                            InkWell(
                              child: const Image(
                                image: AssetImage('assets/Images/backbone8.png'),
                              ),
                              onTap: (){
                                navigatto(context,  const Diseases(id: 9,));

                              },
                            ),
                            InkWell(
                              child: const Image(
                                image: AssetImage('assets/Images/backbone9.png'),
                              ),
                              onTap: (){
                                navigatto(context,  const Diseases(id: 4,));

                              },
                            ),

                          ],
                        ),
                        InkWell(
                          onTap: (){
                            navigatto(context, Diseases(id: 6));
                          },
                          child: const Image(
                            color: Colors.white,
                            image: AssetImage('assets/Images/back10.png'),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            navigatto(context, Diseases(id: 6));
                          },
                          child: const Image(
                            color: Colors.white,
                            image: AssetImage('assets/Images/back11.png'),
                          ),
                        ),





                      ],
                    )

                  ),
                  const SizedBox(height: 10,),
                  Container(
                    width: 120,
                    height: 40,
                    color: pramcolor,
                    child: TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: const Text('Back',style: TextStyle(fontWeight: FontWeight.bold,color:seccolor,fontSize: 20),)),
                  )
                ],
              ),
            ),
          ),
        )
    );

  }
}
