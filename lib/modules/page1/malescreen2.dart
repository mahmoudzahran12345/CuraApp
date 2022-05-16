import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/modules/symptoms/symptomssccren.dart';

import '../../layout/widget/textfield.dart';
import '../../shared/components/component.dart';
import '../../shared/styles/colors.dart';
import 'malescreen.dart';

class MaleScreenRotate extends StatelessWidget {
  const MaleScreenRotate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: secondColor,
        body: Padding(
          padding:  const EdgeInsets.all( 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(title: 'Choose a place for pain',color: Colors.amber,fontSize: 25,alignment: Alignment.center),
              const SizedBox(height: 10,),
              Container(
                color: Colors.black54,
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
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        InkWell(
                          child: const Image(
                            image: AssetImage('assets/Images/20.png'),
                          ),
                          onTap: (){},
                        ),
                        InkWell(
                          child: const Image(
                            image: AssetImage('assets/Images/30.png'),
                          ),
                          onTap: (){},
                        ),
                        InkWell(
                          child: const Image(
                            image: AssetImage('assets/Images/40.png'),
                          ),
                          onTap: (){},
                        ),
                        InkWell(
                          child: const Image(
                            image: AssetImage('assets/Images/50.png'),
                          ),
                          onTap: (){},
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
                            onTap: (){},
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            child: const Image(
                              image: AssetImage('assets/Images/25.png'),
                            ),
                            onTap: (){},
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            child: const Image(
                              image: AssetImage('assets/Images/35.png'),
                            ),
                            onTap: (){},
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            child: const Image(
                              image: AssetImage('assets/Images/45.png'),
                            ),
                            onTap: (){},
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
                            onTap: (){},
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            child: const Image(
                              image: AssetImage('assets/Images/4.png'),
                            ),
                            onTap: (){},
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            child: const Image(
                              image: AssetImage('assets/Images/6.png'),
                            ),
                            onTap: (){},
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            child: const Image(
                              image: AssetImage('assets/Images/8.png'),
                            ),
                            onTap: (){},
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
                            onTap: (){},
                          ),
                        ),

                        Expanded(
                          child: InkWell(
                            child: const Image(
                              image: AssetImage('assets/Images/789.png'),
                            ),
                            onTap: (){},
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
                            onTap: (){},
                          ),
                        ),

                        Expanded(
                          child: InkWell(
                            child: const Image(
                              image: AssetImage('assets/Images/101.png'),
                            ),
                            onTap: (){},
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
                color: Colors.amber,
                child: TextButton(onPressed: (){
                  navigatto(context, const MaleScreen());
                }, child: const Text('back',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
              )
            ],
          ),
        )

    );

  }
}
