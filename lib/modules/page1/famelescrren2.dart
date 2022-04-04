import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/modules/symptoms/symptomssccren.dart';
import 'package:graduationproject/shared/components/component.dart';

import '../../layout/widget/textfield.dart';
import '../../shared/styles/colors.dart';

class FemaleScreenRotate extends StatelessWidget {
  const FemaleScreenRotate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: secondColor,
        body: Padding(
          padding:  EdgeInsets.only(top: 20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(title: 'Choose a place for pain',color: Colors.amber,fontSize: 25,alignment: Alignment.center),
               SizedBox(height: 10,),
                Container(
                 color: Colors.black54,
                  width: double.infinity,
                  height: 490,
                  child: InkWell(
                    onTap: (){
                      navigatto(context, SymptomsScrren());
                    },
                    child: const Image(
                      color: Colors.white,
                      image: AssetImage('assets/Images/fim2.png'),
                    ),
                  ),

                ),
                SizedBox(height: 10,),
                Container(
                  width: 120,
                  height: 40,
                  color: Colors.amber,
                  child: TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text('Back',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
                )
              ],
            ),
          ),
        )
    );

  }
}
