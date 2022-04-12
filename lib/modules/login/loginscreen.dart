import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduationproject/modules/page1/page1screen.dart';
import 'package:graduationproject/shared/components/component.dart';
import 'package:graduationproject/shared/cubit/login/loginstate.dart';
import 'package:graduationproject/shared/styles/colors.dart';
import '../../layout/fadeAnaimation/fadeanamationscreen.dart';
import '../../layout/widget/textfield.dart';
import '../../shared/components/constant.dart';
import '../../shared/cubit/login/loginCubit.dart';
import '../ForgetPassword/forgetpasswordscreen.dart';
import '../register/RegisterScreen.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>CuraLoginCubit(),
      child: BlocConsumer<CuraLoginCubit,CuraLoginStates>(
        listener: (context,state){
          if(state is SignGoggleSuccessfulState){
            navigatto(context, const PageScreen1());
            showtoast(text: 'Successful', state: ToastState.SUCCESS);
          }
          else if(state is SignGoggleErrorState){
            showDialog2(context,"Email is not correct");

          }
          else if(state is CuraLoginSuccessfulState){
            navigatto(context, const PageScreen1());
          }
          else if(state is CuraLoginErrorState){
            showDialog2(context,"Email or Password is not correct");
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
                              'Cura',
                              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold,color: secondColor),
                            ),
                            const SizedBox(height: 20.0),
                            Form(
                                key: formKey,
                                child: Column(
                                  children: [
                                    textformfeild(
                                        name: 'email',
                                        icon: Icons.email,
                                        edit: emailcontroller,
                                        type: TextInputType.emailAddress,
                                        function:(value)
                                        {
                                          {
                                            if(value!.isEmpty)
                                            {
                                              return 'Please enter email';
                                            }
                                            return null;
                                          }
                                        }
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
                                          obscureText: CuraLoginCubit.get(context).ispassword,
                                          decoration:  InputDecoration(
                                              hintText: 'Password',
                                              border: InputBorder.none,
                                              prefixIcon:const Icon(
                                                Icons.lock,
                                                color: Colors.white,
                                              ) ,
                                              suffixIcon: IconButton(onPressed: (){
                                                CuraLoginCubit.get(context).ChangeIconsPassword();
                                              },icon:  Icon(CuraLoginCubit.get(context).suffix,color: Colors.white,),),
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
                                        TextButton(onPressed: (){
                                          navigatto(context, const ForgetPasswordScreen());
                                        }, child:  Text(
                                          'Forget Password?',style: TextStyle(color: secondColor),
                                        )),
                                      ],
                                    ),
                                    const SizedBox(height: 5.0),
                                    ConditionalBuilder(
                                      condition: state is !CuraCreateLoadingState,
                                      builder:(context)=>Padding(
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
                                                CuraLoginCubit.get(context).userLogin(
                                                    email: emailcontroller.text,
                                                    password: passwordcontroller.text);
                                                emailcontroller.clear();
                                                passwordcontroller.clear();


                                              }
                                            },
                                            child: const Text(
                                              'Signin',
                                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25.0),
                                            ),

                                          ),
                                        ),
                                      ),
                                      fallback:(context)=>const Center(child: CircularProgressIndicator()) ,
                                    ),
                                    TextButton(onPressed: (){
                                      navigatto(context, const RegisterScreen());
                                    }, child:  Text(
                                      'Dont have an acount:Create' ,style: TextStyle(color: secondColor),
                                    )),
                                    ConditionalBuilder(
                                      condition:state is !CuraLoginGoogleLoadingState ,
                                      builder:(context)=>Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(25),
                                            color: secondColor
                                        ),
                                        child: FlatButton(onPressed: (){
                                          CuraLoginCubit.get(context).googleSignIn();
                                        },
                                            child: Row(
                                              children: [
                                                const Image(
                                                  image: AssetImage('assets/Images/google.png'),
                                                  height: 40,
                                                  width: 40,
                                                ),
                                                const SizedBox(width: 50,),
                                                CustomText(title: 'Sign in with google',color: Colors.white,
                                                  fontSize: 20,

                                                )
                                              ],
                                            )),
                                      ),
                                      fallback: (context)=>const Align(
                                        alignment: AlignmentDirectional.center,
                                          child: CircularProgressIndicator()),
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
        },

      ),
    );

  }

}