import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String title;
  final double fontSize;
  final Color color;
  final Alignment alignment;

  CustomText(
      {
        this.title = '' ,
        this.fontSize = 16 ,
        this.color = Colors.black,
        this.alignment = Alignment.topLeft
      }
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child:     Text(
        title,
        style: TextStyle(
            fontSize: fontSize,
            color: color
        ),

      ),
    );
  }
}
