import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduationproject/modules/page1/malescreen2.dart';
import 'package:graduationproject/shared/cubit/curaappcubit/curaapp.dart';
import 'package:graduationproject/shared/cubit/curaappcubit/curaappstate.dart';
import 'package:graduationproject/shared/styles/colors.dart';

import '../../shared/components/component.dart';

class MaleScreen extends StatelessWidget {
  const MaleScreen({Key? key}) : super(key: key);

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
                      const Image(
                        image: AssetImage('assets/Images/file3.png'),
                      ),
                      Container(
                        width: 120,
                        height: 40,
                        color: Colors.white,
                        child: TextButton(onPressed: (){
                          navigatto(context, const MaleScreenRotate());
                        }, child: const Text('Rotate',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
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