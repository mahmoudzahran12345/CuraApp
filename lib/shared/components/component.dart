import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/modules/dashboard/dashscreen.dart';
import 'package:graduationproject/modules/feedback/feedbackscreen.dart';
import 'package:graduationproject/modules/notification/notifictionscreen.dart';
import 'package:graduationproject/modules/setting/settingscreen.dart';
import 'package:graduationproject/shared/styles/colors.dart';

final List<dynamic> imageList=[
  'assets/Images/ooo.jpg',
  'assets/Images/eee.png',
  'assets/Images/rrr.jpg',
  'assets/Images/download 1.png',
  'assets/Images/download 2.png',
  'assets/Images/download 3.png',
  'assets/Images/download 4.png',

];

void navigatto(context,widget)=>Navigator.push(context,
  MaterialPageRoute(builder:
      (context)=>widget
  ),);
Widget ItemDrawer({
  required String title,
  required IconData iconData,
})=> Padding(
  padding: const EdgeInsets.all(15.0),
  child: Row(
    children:  [
      Expanded(
        child: Icon(
          iconData,
          size: 20,
          color:  Colors.white,
        ),
      ),
      Expanded(
        flex: 3,
        child: Text(
          title,
          style: const TextStyle(
            color:  Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    ],
  ),
);

