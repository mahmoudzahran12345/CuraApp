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
                padding:  const EdgeInsets.only(top: 20.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(title: 'Choose a place for pain',color: Colors.amber,fontSize: 25,alignment: Alignment.center),
                      const SizedBox(height: 10,),
                      Container(
                        color: Colors.black54,
                        child: InkWell(
                          onTap: (){
                            navigatto(context, SymptomsScrren());
                          },
                          child: const Image(
                            image: AssetImage('assets/Images/file3.png'),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
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
