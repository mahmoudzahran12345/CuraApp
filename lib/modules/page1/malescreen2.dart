import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                Image(
                  image: AssetImage('assets/Images/file2.png'),
                ),
                Container(
                  width: 120,
                  height: 40,
                  color: Colors.white,
                  child: TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text('Back',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                )
              ],
            ),
          ),
        )
    );;
  }
}
