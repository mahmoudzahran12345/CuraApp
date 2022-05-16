import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduationproject/modules/page1/famelescrren2.dart';
import 'package:graduationproject/modules/symptoms/symptomssccren.dart';

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
              backgroundColor: secondColor,
              body: Padding(
                padding:  const EdgeInsets.all( 20.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(title: 'Choose a place for pain',color: Colors.amber,fontSize: 25,alignment: Alignment.center),
                      const SizedBox(height: 10,),
                      Container(
                        color: Colors.black54,
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
                                },
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:  [
                                  InkWell(
                                    child: const Image(
                                      image: AssetImage('assets/Images/f30.png'),
                                    ),
                                    onTap: (){},
                                  ),
                                  InkWell(
                                    child: const Image(
                                      image: AssetImage('assets/Images/f40.png'),
                                    ),
                                    onTap: (){},
                                  ),
                                  InkWell(
                                    child: const Image(
                                      image: AssetImage('assets/Images/f50.png'),
                                    ),
                                    onTap: (){},
                                  ),
                                  InkWell(
                                    child: const Image(
                                      image: AssetImage('assets/Images/f60.png'),
                                    ),
                                    onTap: (){},
                                  ),
                                  InkWell(
                                    child: const Image(
                                      image: AssetImage('assets/Images/f70.png'),
                                    ),
                                    onTap: (){},
                                  ),
                                  InkWell(
                                    child: const Image(
                                      image: AssetImage('assets/Images/f80.png'),
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
                                      image: AssetImage('assets/Images/fa10.png'),
                                    ),
                                    onTap: (){},
                                  ),
                                  InkWell(
                                    child: const Image(
                                      image: AssetImage('assets/Images/fa20.png'),
                                    ),
                                    onTap: (){},
                                  ),
                                  InkWell(
                                    child: const Image(
                                      image: AssetImage('assets/Images/fa30.png'),
                                    ),
                                    onTap: (){},
                                  ),
                                  InkWell(
                                    child: const Image(
                                      image: AssetImage('assets/Images/fa40.png'),
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
                                      image: AssetImage('assets/Images/fa25.png'),
                                    ),
                                    onTap: (){},
                                  ),
                                  InkWell(
                                    child: const Image(
                                      image: AssetImage('assets/Images/fa35.png'),
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
                                        image: AssetImage('assets/Images/fam10.png'),
                                      ),
                                      onTap: (){},
                                    ),
                                  ),
                                  SizedBox(width: 17,),
                                  Expanded(
                                    child: InkWell(
                                      child: const Image(
                                        image: AssetImage('assets/Images/fam20.png'),
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
                                        image: AssetImage('assets/Images/io.png'),
                                      ),
                                      onTap: (){},
                                    ),
                                  ),
                                  const SizedBox(width: 17,),
                                  Expanded(
                                    child: InkWell(
                                      child: const Image(
                                        image: AssetImage('assets/Images/iu.png'),
                                      ),
                                      onTap: (){},
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
                        color: Colors.amber,
                        child: TextButton(onPressed: (){
                          navigatto(context, const FemaleScreenRotate());
                        }, child: const Text('Rotate',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
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
