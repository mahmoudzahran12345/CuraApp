import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduationproject/shared/styles/colors.dart';

import '../../layout/fadeAnaimation/fadeanamationscreen.dart';
import '../../shared/components/component.dart';
import '../../shared/components/constant.dart';
import '../../shared/cubit/login/loginCubit.dart';
import '../../shared/cubit/login/loginstate.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context)=>CuraLoginCubit(),
      child: BlocConsumer<CuraLoginCubit,CuraLoginStates>(
        listener: (context,state){
           if(state is ResetpasswordSuccessfulState){
             showDialog2(context,'Reset Password SuccessFul');
           }
           if(state is ResetpasswordErrorState){
             showDialog2(context,'Reset Password Failed');
           }
        },
        builder: (context,state){
          return Scaffold(
            backgroundColor: Colors.white,

            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: headerHeight,
                    child: const HeaderWidget(headerHeight, true, Icons.login_rounded), //let's create a common header widget
                  ),
                  SafeArea(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20,10 ),
                      margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),// This will be the login form
                      child: Column(
                        children: [
                          Text(
                            'Receive An Email To Reset Your Password',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: secondColor
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          Form(
                            key: formKey3,
                            child:TextFormField(
                              decoration:    InputDecoration(
                                  labelText: '  Email',
                                  border:const OutlineInputBorder(
                                  ) ,
                                  prefixIcon:   Icon(Icons.email,color: secondColor,),
                                  labelStyle:  TextStyle(
                                    fontSize: 20.0,
                                    color: secondColor,
                                    fontWeight: FontWeight.bold,


                                  )
                              ),
                              keyboardType:TextInputType.emailAddress ,

                              controller: emailcontroller,
                              validator: (String ?value){
                                if(value!.isEmpty)
                                {
                                  return 'Please Enter the Email';
                                }
                                return null;
                              },


                            ),


                          ),
                          const SizedBox(height: 20.0),
                          ConditionalBuilder(
                            condition:state is !ResetpasswordLoadingState ,
                            builder:(context)=>SizedBox(
                              width: double.infinity,
                              child: MaterialButton(
                                onPressed: (){
                                  CuraLoginCubit.get(context).resetPassword(email: emailcontroller.text.trim());

                                },
                                height: 50,
                                color: secondColor,
                                child: const Text(
                                  'Reset Password',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                  ),
                                ),
                              ),
                            ),
                            fallback:(context)=>const LinearProgressIndicator() ,
                          )



                        ],
                      ),
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
