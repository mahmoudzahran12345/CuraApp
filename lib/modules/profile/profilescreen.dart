import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../shared/styles/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: firstColor,
      body: SingleChildScrollView(
        child: Container(
          color: firstColor,
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
              SizedBox(
                height: 50.0,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration:   InputDecoration(
                      hintText: 'Age',
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                      ) ,
                      hintStyle:   TextStyle(
                        fontSize: 20.0,
                        color: secondColor,
                        fontWeight: FontWeight.bold,
                      ),
                    suffixIcon: IconButton(
                        onPressed: (){},
                        icon:  Icon(
                            Icons.favorite,color: secondColor,
                        )),
                  ),
                  keyboardType:TextInputType.number ,

                  //controller: emailcontroller,
                  validator: (String ?value){
                    if(value!.isEmpty)
                    {
                      return 'Please enter Age';
                    }
                    return null;
                  },


                ),
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                height: 50.0,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration:   InputDecoration(
                    hintText: 'Blood',
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                    ) ,
                    hintStyle:   TextStyle(
                      fontSize: 20.0,
                      color: secondColor,
                      fontWeight: FontWeight.bold,
                    ),
                    suffixIcon: IconButton(
                        onPressed: (){},
                        icon:  Icon(
                          Icons.favorite,color: secondColor,
                        )),
                  ),
                  keyboardType:TextInputType.name ,

                  //controller: emailcontroller,
                  validator: (String ?value){
                    if(value!.isEmpty)
                    {
                      return 'Please enter Blood';
                    }
                    return null;
                  },


                ),
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                height: 50.0,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration:   InputDecoration(
                    hintText: 'Gender',
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                    ) ,
                    hintStyle:   TextStyle(
                      fontSize: 20.0,
                      color: secondColor,
                      fontWeight: FontWeight.bold,
                    ),
                    suffixIcon: IconButton(
                        onPressed: (){},
                        icon:  Icon(
                          Icons.favorite,color: secondColor,
                        )),
                  ),
                  keyboardType:TextInputType.name ,

                  //controller: emailcontroller,
                  validator: (String ?value){
                    if(value!.isEmpty)
                    {
                      return 'Please enter Gender';
                    }
                    return null;
                  },


                ),
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                height: 50.0,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration:   InputDecoration(
                    hintText: 'Height',
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                    ) ,
                    hintStyle:   TextStyle(
                      fontSize: 20.0,
                      color: secondColor,
                      fontWeight: FontWeight.bold,
                    ),
                    suffixIcon: IconButton(
                        onPressed: (){},
                        icon:  Icon(
                          Icons.favorite,color: secondColor,
                        )),
                  ),
                  keyboardType:TextInputType.number ,

                  //controller: emailcontroller,
                  validator: (String ?value){
                    if(value!.isEmpty)
                    {
                      return 'Please enter Height';
                    }
                    return null;
                  },


                ),
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                height: 50.0,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration:   InputDecoration(
                    hintText: 'Weight',
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                    ) ,
                    hintStyle:   TextStyle(
                      fontSize: 20.0,
                      color: secondColor,
                      fontWeight: FontWeight.bold,
                    ),
                    suffixIcon: IconButton(
                        onPressed: (){},
                        icon:  Icon(
                          Icons.favorite,color: secondColor,
                        )),
                  ),
                  keyboardType:TextInputType.number ,

                  //controller: emailcontroller,
                  validator: (String ?value){
                    if(value!.isEmpty)
                    {
                      return 'Please enter Weight';
                    }
                    return null;
                  },


                ),
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                height: 50.0,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration:   InputDecoration(
                    hintText: 'Location',
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                    ) ,
                    hintStyle:   TextStyle(
                      fontSize: 20.0,
                      color: secondColor,
                      fontWeight: FontWeight.bold,
                    ),
                    suffixIcon: IconButton(
                        onPressed: (){},
                        icon:  Icon(
                          Icons.favorite,color: secondColor,
                        )),
                  ),
                  keyboardType:TextInputType.name ,

                  //controller: emailcontroller,
                  validator: (String ?value){
                    if(value!.isEmpty)
                    {
                      return 'Please enter Location';
                    }
                    return null;
                  },


                ),
              ),
              const SizedBox(height: 15.0),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22.0),
                    color: secondColor
                ),
                child: MaterialButton(
                  onPressed: (){
                  },
                  child:  Text(
                    'Update',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: firstColor
                    ),
                  ),

                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
