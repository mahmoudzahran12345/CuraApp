import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../shared/components/component.dart';
import '../../shared/styles/colors.dart';
import '../aboutapp/aboutscrren.dart';
import '../location/locationscreen.dart';
import '../login/loginscreen.dart';
import '../profile/profilescreen.dart';
import '../register/RegisterScreen.dart';
import 'homescreen.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: pramcolor,size: 40),
        elevation: 0,
        title: const Center(
          child: Text(
            "Cura Medical",
            style: TextStyle(color: pramcolor,fontSize: 25),
          ),
        ),

      ),
      drawer: Drawer(

        backgroundColor: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                height: 95,
                color: Colors.white,
                child:   Lottie.asset('assets/Images/mmm.json'),
              ),
              const SizedBox(height: 30,),
              linearvater(),
              const SizedBox(height: 5),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: CircleAvatar(
                      radius: 24,
                      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                      child:  const CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage('assets/Images/girl .jpg'),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      const Text('MAHMOUDZAHRAN',style: TextStyle(color: pramcolor),
                      ),
                      const SizedBox(height: 5,),
                      Text(
                        'mhmwdzhran02@gmail.com',
                        style: TextStyle(color: pramcolor),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        textAlign: TextAlign.justify,
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 5.0),
              linearvater(),
              const SizedBox(height: 25.0),
              InkWell(
                  onTap: (){
                    Navigator.pop(context);
                    navigatto(context,const ProfileScreen());
                  },
                  child: ItemDrawer(title: 'Profile'
                    ,iconData: Icons.account_circle,)),
              InkWell(
                  onTap: (){
                    Navigator.pop(context);
                    navigatto(context, HomeScreen());
                  },
                  child: ItemDrawer(title: 'Home',iconData: Icons.home,)),
              InkWell(
                  onTap: (){
                    Navigator.pop(context);
                    navigatto(context, AboutApp());
                  },
                  child: ItemDrawer(title: 'AboutApp',iconData: Icons.supervisor_account_outlined,)),
              InkWell(
                  onTap: (){
                    navigatto(context, const LocationScreen());

                  },
                  child: ItemDrawer(title: 'Location'
                    ,iconData: Icons.location_city,)),
              InkWell(
                  onTap: (){
                    Navigator.pop(context);
                    navigatto(context, AboutApp());
                  },
                  child: ItemDrawer(title: 'LogOut',iconData: Icons.logout,)),
              Image(
                  color: pramcolor,

                  image: AssetImage('assets/Images/bottom.png',


                  )),
            ],
          ),
        ),

      ),
     body: SingleChildScrollView(
       child: Padding(
         padding: const EdgeInsets.all(30.0),
         child: Column(
                   children: [
                     Row(children: [
                       Expanded(
                         child: TextButton(onPressed: (){
                           navigatto(context,   LoginPage());
                         }, child: Container(
                             width: 150,
                             height: 45,
                             decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(20),
                               color: pramcolor,
                             ),
                             child: const Center(child: Text('Login',style: TextStyle(color: seccolor,fontSize: 20),)))
                         ),
                       ),
                       Expanded(
                         child: TextButton(onPressed: (){
                           navigatto(context,  const RegisterScreen());
                         }, child: Container(
                             width: 150,
                             height: 45,
                             decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(20),
                               color: pramcolor,
                             ),
                             child: const Center(child: Text('Signup',style: TextStyle(color: seccolor,fontSize: 20),)))),
                       ),
                     ],),
                     SizedBox(height: 20,),
                     Lottie.asset('assets/Images/mmm.json',fit: BoxFit.cover),
                     SizedBox(height: 20,),

                     Padding(
                       padding: const EdgeInsets.all(20.0),
                       child: Container(
                           width: double.infinity,
                           height: 95,
                           decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(20),
                             color: pramcolor,
                           ),
                           child: const Center(child: Text('have a look on common disease',style: TextStyle(color: seccolor,fontSize: 20,fontWeight: FontWeight.bold),))),
                     )




                   ],
         ),
       ),
     ),
    );
  }
}
