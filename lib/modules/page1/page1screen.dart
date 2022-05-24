import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/shared/components/component.dart';
import 'package:graduationproject/shared/styles/colors.dart';
import 'famelescreen.dart';
import 'malescreen.dart';
class PageScreen1 extends StatelessWidget {
  const PageScreen1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondColor,
             elevation: 0,
        title:  const Text(
          'Please Choose Gender',
          style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.amber
          ),
        ),
      ),
     backgroundColor: secondColor,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 480,
                  child: Row(
                    children: [
                      Expanded(
                          child:Container(
                              foregroundDecoration: const BoxDecoration(
                              ),
                            decoration:  const BoxDecoration(
                              color:Colors.black54,
                              image:  DecorationImage(
                                image: AssetImage('assets/Images/file3.png'),
                                fit: BoxFit.cover
                                ),
                              )
                            ),
                          ),



                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            const CircleAvatar(
                              radius: 44,
                              backgroundColor: Colors.amber,
                              child:  CircleAvatar(
                                radius: 40.0,
                                backgroundImage: AssetImage('assets/Images/male.jpg'),
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            Container(
                              width: 89,
                              height: 30,
                              color: Colors.amber,
                              child: MaterialButton(
                                onPressed: (){
                                   navigatto(context,  MaleScreen());
                                },
                                child: const Text(
                                  'Male',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),


                              ),
                            )

                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            const CircleAvatar(
                              radius: 44,
                              backgroundColor: Colors.amber,
                              child:  CircleAvatar(
                                radius: 40.0,
                                backgroundImage: AssetImage('assets/Images/famale.jpg'),
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            Container(
                              width: 89,
                              height: 30,
                              color: Colors.amber,
                              child: MaterialButton(
                                onPressed: (){
                                  navigatto(context, const FemaleScreen());
                                },
                                child: const Text(
                                  'Female',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),


                              ),
                            )

                          ],
                        ),
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
