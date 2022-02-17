
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/shared/styles/colors.dart';

import '../../layout/fadeAnaimation/fadeanamationscreen.dart';
import '../../shared/components/constant.dart';

class LoginPage extends StatelessWidget{
  final double _headerHeight = 250;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black45,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _headerHeight,
              child: HeaderWidget(_headerHeight, true, Icons.login_rounded), //let's create a common header widget
            ),
            SafeArea(
              child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20,10 ),
                  margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),// This will be the login form
                  child: Column(
                    children: [
                       Text(
                        'Cura',
                        style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold,color: secondColor),
                      ),
                      const SizedBox(height: 20.0),
                      Form(
                          key: formKey,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 20.0,
                                    left: 20.0
                                ),
                                child: Container(
                                  height: 45.0,
                                  decoration: BoxDecoration(
                                      color: secondColor,
                                      borderRadius: BorderRadius.circular(25.0)
                                  ),
                                  child: TextFormField(
                                    controller: emailcontroller,
                                    decoration:  const InputDecoration(
                                        hintText: 'Email',
                                        border: InputBorder.none,
                                        prefixIcon:Icon(
                                            Icons.email,
                                          color: Colors.white,
                                        ) ,
                                        hintStyle: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white

                                        )

                                    ) ,
                                    keyboardType:TextInputType.emailAddress ,

                                    validator: ( value)
                                    {
                                      if(value!.isEmpty)
                                      {
                                        return 'Please enter user name';
                                      }
                                      return null;
                                    },

                                  ),
                                ),
                              ),
                              const SizedBox(height: 20.0),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 20.0,
                                    left: 20.0
                                ),
                                child: Container(
                                  height: 45.0,
                                  decoration: BoxDecoration(
                                      color: secondColor,
                                      borderRadius: BorderRadius.circular(25.0)
                                  ),
                                  child: TextFormField(
                                    controller: passwordcontroller,
                                    obscureText: true,
                                    decoration:  InputDecoration(
                                        hintText: 'Password',
                                        border: InputBorder.none,
                                        prefixIcon:const Icon(
                                            Icons.lock,
                                          color: Colors.white,
                                        ) ,
                                        suffixIcon: IconButton(onPressed: (){

                                        },icon: const Icon(Icons.face,color: Colors.white,),),
                                        hintStyle: const TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,


                                        )

                                    ) ,
                                    keyboardType:TextInputType.emailAddress ,

                                    validator: ( value)
                                    {
                                      if(value!.isEmpty)
                                      {
                                        return 'please enter password';
                                      }
                                      return null;
                                    },

                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(onPressed: (){}, child:  Text(
                                    'Forget Password?',style: TextStyle(color: secondColor),
                                  )),
                                ],
                              ),
                              const SizedBox(height: 5.0),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0,
                                    right: 20.0
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 45.0,
                                  decoration: BoxDecoration(
                                      color: secondColor,
                                      borderRadius: BorderRadius.circular(25.0)
                                  ),
                                  child: MaterialButton(
                                    onPressed: (){
                                      if(formKey.currentState!.validate())
                                      {
                                      }
                                    },
                                    child: const Text(
                                      'Login',
                                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25.0),
                                    ),

                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(onPressed: (){}, child:  Text(
                                    'Dont have an acount:Create' ,style: TextStyle(color: secondColor),
                                  )),

                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: InkWell(

                                      child: Container(
                                        height: 55.0,
                                        width: 90,
                                        decoration: BoxDecoration(
                                            color: secondColor,
                                            borderRadius: BorderRadius.circular(25.0)
                                        ),
                                        child:  Row(
                                          children: const [
                                            Padding(
                                              padding: EdgeInsets.only(left: 15.0),
                                              child: Icon(
                                                Icons.facebook,
                                                color: Colors.white,
                                                size: 30.0,
                                              ),
                                            ),
                                            Text(
                                              'Facebook',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold
                                              ),
                                              textAlign: TextAlign.center,

                                            ),

                                          ],
                                        )
                                      ),
                                      onTap: (){},
                                    ),
                                  ),
                                  const SizedBox(width: 20,),
                                  Expanded(
                                    child: InkWell(
                                      child: Container(
                                          height: 55.0,
                                          width: 90,
                                          decoration: BoxDecoration(
                                              color: secondColor,
                                              borderRadius: BorderRadius.circular(25.0)
                                          ),
                                          child:  Row(
                                            children: const [
                                              Padding(
                                                padding: EdgeInsets.only(left: 15.0,bottom: 10.0),
                                                child: Image(
                                                  image: AssetImage('assets/Images/google.png'),
                                                ),
                                              ),
                                              Text(
                                                'Google',
                                                style: TextStyle(
                                                    color: Colors.yellow,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold
                                                ),
                                                textAlign: TextAlign.center,

                                              ),

                                            ],
                                          )
                                      ),
                                      onTap: (){},
                                    ),
                                  ),


                                ],
                              )


                            ],
                          )
                      ),
                    ],
                  )
              ),
            ),
          ],
        ),
      ),
    );

  }
}