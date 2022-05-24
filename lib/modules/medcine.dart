import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/shared/styles/colors.dart';

class Medicine extends StatelessWidget {
  const Medicine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 500,
            color: pramcolor,
          )
        ],
      ),
    );
  }
}
