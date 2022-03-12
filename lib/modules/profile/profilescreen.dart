import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/components/constant.dart';
import '../../shared/cubit/curaappcubit/curaapp.dart';
import '../../shared/cubit/curaappcubit/curaappstate.dart';
import '../../shared/styles/colors.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>CuraApp(),
      child: BlocConsumer<CuraApp,CuraAppState>(
        listener: (context,state){},
        builder: (context,state){
          String? x =CuraApp.get(context).model?.uId;

          return  Scaffold(
            //backgroundColor: firstColor,
            body: SingleChildScrollView(
              child: Container(
                //color: firstColor,
                child: Column(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Container(
                          height: 200.0,
                          foregroundDecoration: const BoxDecoration(
                          ),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                alignment: Alignment(-.2, 0),
                                image: AssetImage(
                                    'assets/Images/profile1.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 44,
                              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                              child:  const CircleAvatar(
                                radius: 40.0,
                                backgroundImage: AssetImage('assets/Images/profile2.png'),
                              ),
                            ),
                            const SizedBox(height: 15.0,),
                            const Text('MAHMOUDZAHRAN',style: TextStyle(color: Colors.black,
                                fontWeight: FontWeight.bold,

                                fontSize: 20.0),
                            ),

                          ],
                        ),

                      ],
                    ),
                    const SizedBox(height: 35.0),
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
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: secondColor,
                                  //borderRadius: BorderRadius.circular(25.0)
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
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: secondColor,
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
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: secondColor,
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
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: secondColor,
                                ),
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  controller: passwordcontrollerre,
                                  obscureText: CuraApp.get(context).ispassword,
                                  decoration:  InputDecoration(
                                      hintText: 'Password',
                                      border: InputBorder.none,
                                      suffixIcon: IconButton(onPressed: (){
                                             CuraApp.get(context).changeiconspasswordre();
                                      },
                                          icon:  Icon(CuraApp.get(context).suffix,color: Colors.white,)
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
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: secondColor,
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
                              condition: true,
                              builder: (context)=>Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0,
                                    right: 20.0
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional.bottomEnd,
                                  child: Container(
                                    width: double.infinity,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: secondColor,
                                    ),
                                    child: MaterialButton(
                                      onPressed: (){
                                        if(formKey2.currentState!.validate())
                                        {
                                          CuraApp.get(context).updateUser(
                                               name: namecontroller.text,
                                              email: emailcontrollerre.text,
                                              phone: phonecontroller.text,
                                              gender: gendercontroller.text,
                                             uId: x.toString()
                                          );
                                        }
                                      },
                                      child: const Text(
                                        'Update',
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
                ),
              ),
            ),
          );
        },

      ),
    );
  }
}
