import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/modules/page1/malescreen2.dart';
import 'package:graduationproject/modules/symptoms/desiase.dart';
import 'package:graduationproject/shared/styles/colors.dart';
import '../../layout/widget/textfield.dart';
import '../../models/symptoms/symptommodel.dart';
import '../../shared/components/component.dart';
class MaleScreen extends StatelessWidget {
  SymptomsModel ?symptomsModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: seccolor,
        body: Padding(
          padding:  const EdgeInsets.all( 20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(title: 'Choose a place for pain',color: pramcolor,fontSize: 25,alignment: Alignment.center),
                const SizedBox(height: 10,),
                Container(
                  color: pramcolor,
                  width: double.infinity,
                  height: 490,
                  child:  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          child: const Image(
                            image: AssetImage('assets/Images/hed.png'),
                          ),
                          onTap: (){
                            navigatto(context,  const Diseases(id: 2,));
                          },
                        ),
                        Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children:  [
                           InkWell(
                             child: const Image(
                               image: AssetImage('assets/Images/hand1.png'),

                             ),
                             onTap: (){
                               navigatto(context,  const Diseases(id: 4,));

                             },
                           ),
                           InkWell(
                             child: const Image(
                               image: AssetImage('assets/Images/heart1.png'),
                             ),
                             onTap: (){
                               showDialog78(context,"I advise you to go to the doctor");


                             },
                           ),
                           InkWell(
                             child: const Image(
                               image: AssetImage('assets/Images/heart2.png'),
                             ),
                             onTap: (){
                               navigatto(context,  const Diseases(id: 3,));

                             },
                           ),

                           InkWell(
                             child: const Image(
                               image: AssetImage('assets/Images/hand2.png'),
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
                                image: AssetImage('assets/Images/hand3.png'),

                              ),
                              onTap: (){
                                navigatto(context,  const Diseases(id: 4,));

                              },
                            ),
                            InkWell(
                              onTap: (){
                                navigatto(context,  const Diseases(id: 5,));

                              },
                              child: const Image(
                                image: AssetImage('assets/Images/Belly1.png'),

                              ),
                            ),
                            InkWell(
                              child: const Image(
                                image: AssetImage('assets/Images/Belly2.png'),

                              ),
                              onTap: (){
                                navigatto(context,  const Diseases(id: 5,));

                              },
                            ),
                            InkWell(
                              child: const Image(
                                image: AssetImage('assets/Images/hand4.png'),

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
                                image: AssetImage('assets/Images/hand5.png'),

                              ),
                              onTap: (){
                                navigatto(context,  const Diseases(id: 4,));
                              },
                            ),
                            InkWell(
                              child: const Image(
                                image: AssetImage('assets/Images/leg1.png'),

                              ),
                              onTap: (){
                                navigatto(context,  const Diseases(id: 9,));

                              },
                            ),
                            InkWell(
                              child: const Image(
                                image: AssetImage('assets/Images/leg2.png'),
                              ),
                              onTap: (){
                                navigatto(context,  const Diseases(id: 9,));
                              },
                            ),

                            InkWell(
                              child: const Image(
                                image: AssetImage('assets/Images/hand6.png'),
                              ),
                              onTap: (){},
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children:  [
                            InkWell(
                              child: const Image(
                                image: AssetImage('assets/Images/leg3.png'),

                              ),
                              onTap: (){
                                navigatto(context,  const Diseases(id: 6,));

                              },
                            ),
                            InkWell(
                              child: const Image(
                                image: AssetImage('assets/Images/leg4.png'),

                              ),
                              onTap: (){
                                navigatto(context,  const Diseases(id: 6,));

                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children:  [
                            InkWell(
                              child: const Image(
                                image: AssetImage('assets/Images/leg5.png'),
                              ),
                              onTap: (){
                                navigatto(context,  const Diseases(id: 6,));

                              },
                            ),
                            InkWell(
                              child: const Image(
                                image: AssetImage('assets/Images/leg6.png'),


                              ),
                              onTap: (){
                                navigatto(context,  const Diseases(id: 6 ));

                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10.0,),
                Container(
                  width: 120,
                  height: 40,
                  color: pramcolor,
                  child: TextButton(onPressed: (){
                    navigatto(context, const MaleScreenRotate());
                  }, child: const Text('Rotate',style: TextStyle(fontWeight: FontWeight.bold,color:seccolor,fontSize: 20),)),
                )
              ],
            ),
          ),
        )
    );

  }

}