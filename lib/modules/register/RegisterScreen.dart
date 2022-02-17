import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../layout/fadeAnaimation/fadeanamationscreen.dart';
import '../../shared/components/constant.dart';
import '../../shared/styles/colors.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  final double _headerHeight = 250;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                                    textAlign: TextAlign.center,
                                    controller: emailcontroller,
                                    decoration:  const InputDecoration(
                                        hintText: 'Email',
                                        border: InputBorder.none,
                                        suffixIcon:Icon(
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
                                        return 'Please enter Email';
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
                                    textAlign: TextAlign.center,
                                    controller: namecontroller,
                                    decoration:  const InputDecoration(
                                        hintText: 'User Name',
                                        border: InputBorder.none,
                                        suffixIcon:Icon(
                                          Icons.person,
                                          color: Colors.white,
                                        ) ,
                                        hintStyle: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,


                                        )

                                    ) ,
                                    keyboardType:TextInputType.name ,
                                    validator: ( value)
                                    {
                                      if(value!.isEmpty)
                                      {
                                        return 'Please enter username';
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
                                    textAlign: TextAlign.center,
                                    controller: phonecontroller,
                                    decoration:  const InputDecoration(
                                        hintText: 'phone',
                                        border: InputBorder.none,
                                        suffixIcon:Icon(
                                          Icons.phone,
                                          color: Colors.white,
                                        ) ,
                                        hintStyle: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white

                                        )

                                    ) ,
                                    keyboardType:TextInputType.phone ,
                                    validator: ( value)
                                    {
                                      if(value!.isEmpty)
                                      {
                                        return 'Please enter phone';
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
                                    textAlign: TextAlign.center,
                                    controller: passwordcontroller,
                                    obscureText: true,
                                    decoration:  InputDecoration(
                                        hintText: 'Password',
                                        border: InputBorder.none,
                                        suffixIcon: IconButton(onPressed: (){

                                        },icon: const Icon(Icons.lock,color: Colors.white,),),
                                        hintStyle: const TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,


                                        )

                                    ) ,
                                    keyboardType:TextInputType.visiblePassword ,


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
                                    textAlign: TextAlign.center,
                                    controller: gendercontroller,
                                    decoration:  const InputDecoration(
                                        hintText: 'Gender',
                                        border: InputBorder.none,
                                        suffixIcon:Icon(
                                          Icons.transgender,
                                          color: Colors.white,
                                        ) ,
                                        hintStyle: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white

                                        )

                                    ) ,
                                    keyboardType:TextInputType.name ,
                                    validator: ( value)
                                    {
                                      if(value!.isEmpty)
                                      {
                                        return 'Please enter gender';
                                      }
                                      return null;
                                    },

                                  ),
                                ),
                              ),
                              const SizedBox(height: 20.0),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0,
                                    right: 20.0
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional.bottomEnd,
                                  child: Container(
                                    width: 150,
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
                                        'SignUp',
                                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25.0),
                                      ),

                                    ),
                                  ),
                                ),
                              ),




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
