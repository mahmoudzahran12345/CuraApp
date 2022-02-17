import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:graduationproject/shared/styles/colors.dart';


import 'constant.dart';

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
          size: 30,
          color:  Colors.white,
        ),
      ),
      Expanded(
        flex: 3,
        child: Text(
          title,
          style:  TextStyle(
            color:  secondColor,
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    ],
  ),
);


hexcolor(String colorhexcode)
{
  String colornew = '0xff' + colorhexcode;
  colornew = colornew.replaceAll('#' , '');
  int colorint = int.parse(colornew);
  return colorint;
}
Widget textformfeild({
  required String name,
  required IconData icon,
  required TextEditingController edit,
  IconData? iconData

})=> Container(
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(22),
  ),
  child: TextFormField(
    decoration:   InputDecoration(
        hintText: name,
        border:OutlineInputBorder(
          borderRadius: BorderRadius.circular(22),
        ) ,
        prefixIcon:  Icon(icon,color: firstColor,),
        suffixIcon: Icon(iconData,color: firstColor),
        hintStyle:   TextStyle(
          fontSize: 20.0,
          color: firstColor,
          fontWeight: FontWeight.bold,
        )
    ),
    keyboardType:TextInputType.emailAddress ,
    controller: edit,




  ),
);
void showtoast({required String text , required ToastState state})=> Fluttertoast.showToast(
    msg: text,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 1,
    backgroundColor: choosetoast(state),
    textColor: Colors.white,
    fontSize: 16.0
);
enum ToastState{SUCCESS,ERROR,Warning}
Color? choosetoast(ToastState state){
  Color color ;
  switch(state)
  {

    case ToastState.SUCCESS:
      {
        color =  Colors.green;
        break;
      }
    case ToastState.ERROR:
      color =  Colors.red;
      break;
    case ToastState.Warning:
      color =  Colors.yellow;
      break;
  }
  return color;
}
void navigatandfinsh(context,widget)=>Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder:
        (context)=>widget
    ),
        (Route<dynamic> route)=>false
);
Widget defaultButton({

  //components that are common in each button does not need required
  double width = double.infinity ,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 16,
  //components that are required in each button and differ from one to another
  required Function function ,
  required String text ,
}) =>
    Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
      ),
      width: width,


      child: MaterialButton(
        onPressed: function(),

        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),

    );
Widget linearvater()=> Padding(
  padding: const EdgeInsets.only(left: 50.0),
  child: Container(
    width: 200.0,
    height: 2.0,
    color: Colors.grey[300],


  ),
);
