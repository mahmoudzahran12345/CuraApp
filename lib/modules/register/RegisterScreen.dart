import 'package:bot_toast/bot_toast.dart';
import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduationproject/modules/page1/page1screen.dart';
import 'package:graduationproject/shared/components/component.dart';
import 'package:graduationproject/shared/cubit/login/loginstate.dart';

import '../../layout/fadeAnaimation/fadeanamationscreen.dart';
import '../../shared/components/constant.dart';
import '../../shared/cubit/login/loginCubit.dart';
import '../../shared/cubit/register/registercubit.dart';
import '../../shared/cubit/register/registerstattes.dart';
import '../../shared/styles/colors.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>CubitRegister(),
      child: BlocConsumer<CubitRegister,CuraRegister>(
        listener: (context,state){
          if(state is CuraRegisterLoadingState){
            navigatto(context, const PageScreen1());

          }
        },
        builder: (context,state){
          return  Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: headerHeight,
                    child: HeaderWidget(headerHeight, true, Icons.login_rounded),
                  ),
                  SafeArea(
                    child: Container(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20,10 ),
                        margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Column(
                          children: [
                            Text(
                              'Cura',
                              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold,color: secondColor),
                            ),
                            const SizedBox(height: 20.0),
                            Form(
                                key: formKey2,
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
                                          controller: emailcontrollerre,
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
                                          controller: passwordcontrollerre,
                                          obscureText: CubitRegister.get(context).ispassword,
                                          decoration:  InputDecoration(
                                              hintText: 'Password',
                                              border: InputBorder.none,
                                              suffixIcon: IconButton(onPressed: (){
                                                CubitRegister.get(context).changeiconspasswordre();
                                              },
                                                  icon:Icon(CubitRegister.get(context).suffix,color: Colors.white,)
                                              ),
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
                                    ConditionalBuilder(
                                      condition: state is !CuraRegisterLoadingState,
                                      builder: (context)=>Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20.0,
                                            right: 20.0
                                        ),
                                        child: Align(
                                          alignment: AlignmentDirectional.bottomEnd,
                                          child: Container(
                                            width: double.infinity,
                                            height: 45.0,
                                            decoration: BoxDecoration(
                                                color: secondColor,
                                                borderRadius: BorderRadius.circular(25.0)
                                            ),
                                            child: MaterialButton(
                                              onPressed: (){
                                                if(formKey2.currentState!.validate())
                                                {
                                                  CubitRegister.get(context).userRegister(
                                                      name:namecontroller.text,
                                                      email: emailcontrollerre.text,
                                                      password: passwordcontrollerre.text,
                                                      phone: phonecontroller.text,
                                                      gender: gendercontroller.text);
                                                      namecontroller.clear();
                                                      emailcontrollerre.clear();
                                                      passwordcontrollerre.clear();
                                                      phonecontroller.clear();
                                                      gendercontroller.clear();
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
                                      fallback: (context)=>const Center(child: CircularProgressIndicator()),
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
        },
      ),
    );
  }
}
