import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/layout/webview/webviewScreen2.dart';
import 'package:graduationproject/modules/aboutapp/aboutscrren.dart';
import 'package:graduationproject/modules/profile/profilescreen.dart';
import 'package:graduationproject/modules/login/loginscreen.dart';
import 'package:graduationproject/modules/register/RegisterScreen.dart';
import 'package:graduationproject/modules/search/searchscreen.dart';
import 'package:graduationproject/shared/components/component.dart';
import 'package:graduationproject/shared/components/constant.dart';
import 'package:graduationproject/shared/styles/colors.dart';
import 'package:lottie/lottie.dart';

import '../../layout/webview/webviewscreen.dart';



class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: secondColor),
        elevation: 0,
        actions:  [
          IconButton(onPressed: (){
            navigatto(context,const SearchScreen());
          }, icon:  Icon(Icons.search_outlined,size: 30,color: secondColor,)),
          TextButton(onPressed: (){

            navigatto(context,  LoginPage());
          }, child: const Text('Login')),
          TextButton(onPressed: (){
            navigatto(context,  const RegisterScreen());

          }, child: const Text('Signup'))

        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children:   [
            Container(
              height: 220.0,
              foregroundDecoration: const BoxDecoration(
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment(-.2, 0),
                    image: AssetImage(
                        'assets/Images/home1.jpeg'),
                    fit: BoxFit.cover),
              ),

            ),
            const SizedBox(height: 20.0),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      width: 180.0,
                      height: 120.0,
                      foregroundDecoration: const BoxDecoration(
                      ),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment(-.2, 0),
                            image: AssetImage(
                                'assets/Images/home2.png'),
                            fit: BoxFit.cover),
                      ),



                    ),
                  ),
                ),
                const SizedBox(width: 8.0,),
                Expanded(
                  child: Container(
                    width: 180,
                    height: 120,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: Text(
                              'Common Diseases',
                              style: TextStyle(
                                color: secondColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5.0,),
                          const Text(
                            'infectious diseases are disease caused by microorganisms.\n'
                                'these are microscopic\n'
                                'organisms,such'
                                'as bacteria, viruses,fungi,or parasites'
                                ,
                            style: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.bold,

                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: Container(
                              width: 89,
                              height: 25,
                              color: firstColor,
                              child: MaterialButton(
                                  onPressed: (){
                                       navigatto(context, WebViewExample());
                                  },
                                child: Text(
                                  'SeeMore',
                                  style: TextStyle(
                                    color: secondColor,
                                  ),

                                ),


                                  ),
                            ),
                          )
                        ],
                      ),

                    ),

                  ),
                )


              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 120,
                    height: 180,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text(
                              'Symptoms Of\nInfectious Diseases',
                              style: TextStyle(
                                color: secondColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5.0,),
                          const Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child: Text(
                              'Many infectious diseases have similar symptoms like'
                              ,
                              style: TextStyle(
                                color: Colors.black45,
                                fontWeight: FontWeight.bold,

                              ),
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          const Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child: Text(
                              'fever,\ndiarrhea,\nfatigue,and\nmuscle aches'
                              ,
                              style: TextStyle(
                                color: Colors.black45,
                                fontWeight: FontWeight.bold,

                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Container(
                              width: 89,
                              height: 25,
                              color: firstColor,
                              child: MaterialButton(
                                onPressed: (){
                                  navigatto(context, WebViewExample());

                                },
                                child: Text(
                                  'SeeMore',
                                  style: TextStyle(
                                    color: secondColor,
                                  ),
                                ),


                              ),
                            ),
                          )
                        ],
                      ),

                    ),

                  ),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      width: 120.0,
                      height: 180.0,
                      foregroundDecoration: const BoxDecoration(
                      ),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment(-.2, 0),
                            image: AssetImage(
                                'assets/Images/home3.png'),
                            fit: BoxFit.cover),
                      ),



                    ),
                  ),
                ),



              ],
            ),
            const SizedBox(height:20.0 ,),
            Padding(
              padding: const EdgeInsets.only(left: 40.0,right: 40.0),
              child: Container(
                width:double.infinity,
                height: 40,
                color: firstColor,
                child: Center(
                  child: Text(
                    'Treatment For Infectious diseases',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: secondColor
                    ),
                  ),
                ),

              ),
            ),
            const SizedBox(height: 20.0,),
            Padding(
             padding: const EdgeInsets.only(left: 5.0,right: 5.0),
             child: Container(
               width: double.infinity,
               height: 110,
               child: const Text(
                 'Many infectious diseases can be treated by antibiotics\n'
                 '{specifically diseases caused by bacteria}.Those caused by viruses'
                  'can sometimes be treated by antiviral medications,and diseases '
                  'caused by fungi can be treated by antiifungals\n'
                  'some diseases, however, have become resistant to drugs\n'
                  'you should always consult a doctor about the best treatment option'
                  'for your particular symptoms or disease',
                 style: TextStyle(
                   color: Colors.black45,
                   fontWeight: FontWeight.bold
                 ),


               ),
             ),
           ),
            const SizedBox(height:20.0 ,),
            Padding(
              padding: const EdgeInsets.only(left: 40.0,right: 40.0),
              child: Container(
                width:double.infinity,
                height: 40,
                color: firstColor,
                child: Center(
                  child: Text(
                    'Hear From Our Specialists',
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: secondColor
                    ),
                  ),
                ),

              ),
            ),
            const SizedBox(height: 20.0,),
            Row(
              children: [
                Expanded(
            child: Padding(
            padding:  const EdgeInsets.only(left: 5.0),
               child: Container(
                    width: 60,
                     height: 220,
                   decoration: BoxDecoration(
                   border: Border.all(color: Colors.black45),
          ),
            child: Column(
              children:  [
                Container(
                  height: 82,
                  child: const Image(
                      image:AssetImage('assets/Images/home4.jpg')
                  ),
                ),
                const SizedBox(height: 20.0,),
                Container(
                  height: 70,
                  child: const Text(
                    'Covid-19 Testing:\nWhat You Need To Know',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Colors.black45
                    ),
                  ),
                ),
                const SizedBox(height: 20.0,),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Container(
                    width: 102,
                    height: 25,

                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black45),
                    ),
                    child: MaterialButton(
                      onPressed: (){
                        navigatto(context, WebViewScreen2());
                      },
                      child: Text(
                        'Read More',
                        style: TextStyle(
                          color: secondColor,
                        ),
                      ),


                    ),
                  ),
                )


              ],
            ),
        ),
      ),
    ),
                SizedBox(width: 10.0,),
                Expanded(
                  child: Padding(
                    padding:  const EdgeInsets.only(left: 5.0),
                    child: Container(
                      width: 60,
                      height: 220,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black45),
                      ),
                      child: Column(
                        children:  [
                          Container(
                            height: 82,
                            child: const Image(
                                image:AssetImage('assets/Images/home5.jpg')
                            ),
                          ),
                          const SizedBox(height: 20.0,),
                          Container(
                            height: 70,
                            child: const Text(
                              'The Omicron Variant Is Here.This Is Why You'
                                  'Need To Step It Up',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                  color: Colors.black45
                              ),
                            ),
                          ),
                          const SizedBox(height: 20.0,),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Container(
                              width: 102,
                              height: 25,

                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black45),
                              ),
                              child: MaterialButton(
                                onPressed: (){
                                  navigatto(context, WebViewExample());
                                },
                                child: Text(
                                  'Read More',
                                  style: TextStyle(
                                    color: secondColor,
                                  ),
                                ),


                              ),
                            ),
                          )


                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.0,),
                Expanded(
                  child: Padding(
                    padding:  const EdgeInsets.only(left: 5.0),
                    child: Container(
                      width: 60,
                      height: 220,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black45),
                      ),
                      child: Column(
                        children:  [
                          Container(
                            height: 82.0,
                            foregroundDecoration: const BoxDecoration(
                            ),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  alignment: Alignment(-.2, 0),
                                  image: AssetImage(
                                      'assets/Images/home6.jpg'),
                                  fit: BoxFit.cover),
                            ),

                          ),

                          const SizedBox(height: 20.0,),
                          Container(
                            height: 70,
                            child: const Text(
                              'Omicron Should Not Be Called A Mild Variant Of'
                                  'Covid-19',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                  color: Colors.black45
                              ),
                            ),
                          ),
                          const SizedBox(height: 20.0,),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Container(
                              width: 102,
                              height: 25,

                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black45),
                              ),
                              child: MaterialButton(
                                onPressed: (){
                                  navigatto(context, WebViewExample());

                                },
                                child: Text(
                                  'Read More',
                                  style: TextStyle(
                                    color: secondColor,
                                  ),
                                ),


                              ),
                            ),
                          )


                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )

          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              height: 95,
              color: Colors.white,
              child:   Lottie.asset('assets/Images/zzz.json'),
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
                    Text('MAHMOUDZAHRAN',style: TextStyle(color: secondColor),
                    ),
                    const SizedBox(height: 5,),
                    Text(
                      'mhmwdzhran02@gmail.com',
                      style: TextStyle(color: secondColor),
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
                  Navigator.pop(context);
                  navigatto(context, AboutApp());
                },
                child: ItemDrawer(title: 'LogOut',iconData: Icons.logout,)),
            Image(
              color: secondColor,

                image: AssetImage('assets/Images/bottom.png',


                )),

          ],
        ),

      ),

    );
  }


}

