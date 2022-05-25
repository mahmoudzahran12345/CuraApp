import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/modules/symptoms/desiase.dart';

import '../../layout/widget/textfield.dart';
import '../../shared/components/component.dart';
import '../../shared/styles/colors.dart';
import 'malescreen.dart';

class MaleScreenRotate extends StatelessWidget {
  const MaleScreenRotate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: seccolor,
        body: Padding(
          padding:  const EdgeInsets.all( 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(title: 'Choose a place for pain',color: pramcolor,fontSize: 25,alignment: Alignment.center),
              const SizedBox(height: 10,),
              Container(
                color: pramcolor,
                width: double.infinity,
                height: 490,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: const Image(
                        image: AssetImage('assets/Images/00.png'),
                      ),
                      onTap: (){
                        navigatto(context, Diseases(id: 2,));
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        InkWell(
                          child: const Image(
                            image: AssetImage('assets/Images/20.png'),
                          ),
                          onTap: (){
                            navigatto(context, Diseases(id: 4,));

                          },
                        ),
                        InkWell(
                          child: const Image(
                            image: AssetImage('assets/Images/30.png'),
                          ),
                          onTap: (){
                            navigatto(context, Diseases(id: 7,));

                          },
                        ),
                        InkWell(
                          child: const Image(
                            image: AssetImage('assets/Images/40.png'),
                          ),
                          onTap: (){
                            navigatto(context, Diseases(id: 7,));

                          },
                        ),
                        InkWell(
                          child: const Image(
                            image: AssetImage('assets/Images/50.png'),
                          ),
                          onTap: (){
                            navigatto(context, Diseases(id: 4,));

                          },
                        ),



                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        Expanded(
                          child: InkWell(
                            child: const Image(
                              image: AssetImage('assets/Images/15.png'),
                            ),
                            onTap: (){
                              navigatto(context, Diseases(id: 4,));

                            },
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            child: const Image(
                              image: AssetImage('assets/Images/25.png'),
                            ),
                            onTap: (){
                              navigatto(context, Diseases(id: 7,));
                            },
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            child: const Image(
                              image: AssetImage('assets/Images/35.png'),
                            ),
                            onTap: (){
                              navigatto(context, Diseases(id: 7,));

                            },
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            child: const Image(
                              image: AssetImage('assets/Images/45.png'),
                            ),
                            onTap: (){
                              navigatto(context, Diseases(id: 4,));

                            },
                          ),
                        ),



                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        Expanded(
                          child: InkWell(
                            child: const Image(
                              image: AssetImage('assets/Images/2.png'),
                            ),
                            onTap: (){                            navigatto(context, Diseases(id: 4,));
                            },
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            child: const Image(
                              image: AssetImage('assets/Images/4.png'),
                            ),
                            onTap: (){
                              navigatto(context, Diseases(id: 9,));
                            },
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            child: const Image(
                              image: AssetImage('assets/Images/6.png'),
                            ),
                            onTap: (){
                              navigatto(context, Diseases(id: 9,));

                            },
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            child: const Image(
                              image: AssetImage('assets/Images/8.png'),
                            ),
                            onTap: (){
                              navigatto(context, Diseases(id: 4,));

                            },
                          ),
                        ),



                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        Expanded(
                          child: InkWell(
                            child: const Image(
                              image: AssetImage('assets/Images/3.png'),
                            ),
                            onTap: (){
                              navigatto(context, Diseases(id: 6,));

                            },
                          ),
                        ),

                        Expanded(
                          child: InkWell(
                            child: const Image(
                              image: AssetImage('assets/Images/789.png'),
                            ),
                            onTap: (){
                              navigatto(context, Diseases(id: 6,));

                            },
                          ),
                        ),



                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        Expanded(
                          child: InkWell(
                            child: const Image(
                              image: AssetImage('assets/Images/001.png'),
                            ),
                            onTap: (){
                              navigatto(context, Diseases(id: 6,));

                            },
                          ),
                        ),

                        Expanded(
                          child: InkWell(
                            child: const Image(
                              image: AssetImage('assets/Images/101.png'),
                            ),
                            onTap: (){
                              navigatto(context, const Diseases(id: 6,));

                            },
                          ),
                        ),



                      ],
                    ),

                  ],
                )

              ),
              const SizedBox(height: 10.0,),
              Container(
                width: 120,
                height: 40,
                color: pramcolor,
                child: TextButton(onPressed: (){
                  navigatto(context,  MaleScreen());
                }, child: const Text('back',style: TextStyle(fontWeight: FontWeight.bold,color:seccolor,fontSize: 20),)),
              )
            ],
          ),
        )

    );

  }
}
