import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduationproject/modules/page1/famelescrren2.dart';
import 'package:graduationproject/modules/symptoms/desiase.dart';

import '../../layout/widget/textfield.dart';
import '../../shared/components/component.dart';
import '../../shared/cubit/curaappcubit/curaapp.dart';
import '../../shared/cubit/curaappcubit/curaappstate.dart';
import '../../shared/styles/colors.dart';

class FemaleScreen extends StatelessWidget {
  const FemaleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>CuraApp(),
      child: BlocConsumer<CuraApp,CuraAppState>(
        listener: (context,state){},
        builder: (context,state){
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
                        height: 590,
                        child:  Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                child: const Image(
                                  image: AssetImage('assets/Images/f10.png'),

                                ),
                                onTap: (){
                                  navigatto(context, Diseases(id: 2));
                                },
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:  [
                                  InkWell(
                                    child: const Image(
                                      image: AssetImage('assets/Images/f30.png'),
                                    ),
                                    onTap: (){
                                      navigatto(context, const Diseases(id: 4));

                                    },
                                  ),
                                  InkWell(
                                    child: const Image(
                                      image: AssetImage('assets/Images/f40.png'),
                                    ),
                                    onTap: (){
                                      navigatto(context, const Diseases(id: 4));

                                    },
                                  ),
                                  InkWell(
                                    child: const Image(
                                      image: AssetImage('assets/Images/f50.png'),
                                    ),
                                    onTap: (){
                                      navigatto(context, const Diseases(id: 11));

                                    },
                                  ),
                                  InkWell(
                                    child: const Image(
                                      image: AssetImage('assets/Images/f60.png'),
                                    ),
                                    onTap: (){
                                      navigatto(context,  const Diseases(id: 3,));

                                    },
                                  ),
                                  InkWell(
                                    child: const Image(
                                      image: AssetImage('assets/Images/f70.png'),
                                    ),
                                    onTap: (){
                                      navigatto(context, const Diseases(id: 4));

                                    },
                                  ),
                                  InkWell(
                                    child: const Image(
                                      image: AssetImage('assets/Images/f80.png'),
                                    ),
                                    onTap: (){
                                      navigatto(context, const Diseases(id: 4));

                                    },
                                  ),





                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:  [
                                  InkWell(
                                    child: const Image(
                                      image: AssetImage('assets/Images/fa10.png'),
                                    ),
                                    onTap: (){
                                      navigatto(context, const Diseases(id: 4));

                                    },
                                  ),
                                  InkWell(
                                    child: const Image(
                                      image: AssetImage('assets/Images/fa20.png'),
                                    ),
                                    onTap: (){
                                      navigatto(context, const Diseases(id: 5));

                                    },
                                  ),
                                  InkWell(
                                    child: const Image(
                                      image: AssetImage('assets/Images/fa30.png'),
                                    ),
                                    onTap: (){
                                      navigatto(context, const Diseases(id: 10));

                                    },
                                  ),
                                  InkWell(
                                    child: const Image(
                                      image: AssetImage('assets/Images/fa40.png'),
                                    ),
                                    onTap: (){
                                      navigatto(context, const Diseases(id: 4));

                                    },
                                  ),






                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:  [

                                  InkWell(
                                    child: const Image(
                                      image: AssetImage('assets/Images/fa25.png'),
                                    ),
                                    onTap: (){
                                      navigatto(context, const Diseases(id: 10));

                                    },
                                  ),
                                  InkWell(
                                    child: const Image(
                                      image: AssetImage('assets/Images/fa35.png'),
                                    ),
                                    onTap: (){
                                      navigatto(context, const Diseases(id: 10));

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
                                        image: AssetImage('assets/Images/fam10.png'),
                                      ),
                                      onTap: (){
                                        navigatto(context, const Diseases(id: 6));

                                      },
                                    ),
                                  ),
                                  SizedBox(width: 17,),
                                  Expanded(
                                    child: InkWell(
                                      child: const Image(
                                        image: AssetImage('assets/Images/fam20.png'),
                                      ),
                                      onTap: (){
                                        navigatto(context, const Diseases(id: 6));

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
                                        image: AssetImage('assets/Images/io.png'),
                                      ),
                                      onTap: (){
                                        navigatto(context, const Diseases(id: 6));

                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 17,),
                                  Expanded(
                                    child: InkWell(
                                      child: const Image(
                                        image: AssetImage('assets/Images/iu.png'),
                                      ),
                                      onTap: (){
                                        navigatto(context, const Diseases(id: 6));

                                      },
                                    ),
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
                          navigatto(context, const FemaleScreenRotate());
                        }, child: const Text('Rotate',style: TextStyle(fontWeight: FontWeight.bold,color:seccolor,fontSize: 20),)),
                      )
                    ],
                  ),
                ),
              )

          );
        },
      ),
    );
  }
}
