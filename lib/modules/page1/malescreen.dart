import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduationproject/modules/page1/malescreen2.dart';
import 'package:graduationproject/shared/cubit/curaappcubit/curaapp.dart';
import 'package:graduationproject/shared/cubit/curaappcubit/curaappstate.dart';
import 'package:graduationproject/shared/styles/colors.dart';

import '../../layout/widget/textfield.dart';
import '../../shared/components/component.dart';
import '../symptoms/symptomssccren.dart';

class MaleScreen extends StatelessWidget {
  const MaleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

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
                  height: 490,
                  child: InkWell(
                    onTap: (){navigatto(context, SymptomsScrren());},
                    child: const Image(
                      image: AssetImage('assets/Images/file5.png'),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0,),
                Container(
                  width: 120,
                  height: 40,
                  color: Colors.amber,
                  child: TextButton(onPressed: (){
                    navigatto(context, const MaleScreenRotate());
                  }, child: const Text('Rotate',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
                )
              ],
            ),
          ),
        )
    );

  }

}