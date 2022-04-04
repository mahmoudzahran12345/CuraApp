import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/modules/symptoms/symptomssccren.dart';

import '../../layout/widget/textfield.dart';
import '../../shared/components/component.dart';
import '../../shared/styles/colors.dart';

class MaleScreenRotate extends StatelessWidget {
  const MaleScreenRotate({Key? key}) : super(key: key);

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
                const SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  height: 490,
                  color: Colors.black54,
                  child: InkWell(
                    onTap: (){
                      navigatto(context, SymptomsScrren());
                    },
                    child: const Image(
                      image: AssetImage('assets/Images/file2.png'),
                    ),
                  ),

                ),
                const SizedBox(height: 10,),
                Container(
                  width: 120,
                  height: 40,
                  color: Colors.amber,
                  child: TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: const Text('Back',style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),
                )
              ],
            ),
          ),
        )
    );
  }
}
