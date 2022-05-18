import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:graduationproject/models/symptoms/symptommodel.dart';
import 'package:graduationproject/shared/styles/colors.dart';

class Diseases extends StatefulWidget {
  const Diseases({Key? key}) : super(key: key);

  @override
  State<Diseases> createState() => _DiseasesState();
}

class _DiseasesState extends State<Diseases> {
  void initState() {
    // TODO: implement initState
    loadsection();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0.0,
        title: const Center(child: Text('Card of Symptoms and Diagnosis',style: TextStyle(color: Colors.black54),)),
      ),
      body: ListView.separated(
       // scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)=>Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: double.infinity,
                  height: 345,
                  decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(25.0),
                    color: Colors.white,


                  ),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,height: 70,
                       color: Colors.black54,

                        child: Center(
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:  [
                                Expanded(
                                  child: Text('${sections[index].name}',style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.white

                                  ),),
                                ),
                                const SizedBox(width: 10.0,),
                              ],
                            )
                        ),

                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,top: 4.0),
                            child: Row(
                              children:  [
                                Expanded(
                                  child: Text('${sections[index].symptoms1}',style: TextStyle(
                                    fontSize: 20,
                                  ),),
                                ),
                                SizedBox(width: 10.0,),

                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,top: 4.0),
                            child: Row(
                              children:  [
                                Expanded(
                                  child: Text('${sections[index].symptoms2}',style: TextStyle(
                                    fontSize: 20,
                                  ),),
                                ),
                                SizedBox(width: 10.0,),


                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,top: 4.0),
                            child: Row(
                              children:  [
                                Expanded(
                                  child: Text('${sections[index].symptoms3}',style: TextStyle(
                                    fontSize: 20,
                                  ),),
                                ),
                                SizedBox(width: 10.0,),


                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,top: 4.0),
                            child: Row(
                              children:  [
                                Expanded(
                                  child: Text('${sections[index].symptoms4}',style: TextStyle(
                                    fontSize: 20,
                                  ),),
                                ),
                                SizedBox(width: 10.0,),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,top: 4.0),
                            child: Row(
                              children:  [
                                Expanded(
                                  child: Text('${sections[index].symptoms5}',style: TextStyle(
                                    fontSize: 20,
                                  ),),
                                ),
                                SizedBox(width: 10.0,),
                              ],
                            ),
                          ),

                        ],
                      )
                    ],
                  ),

                ),
              )
            ],
          ),
          separatorBuilder: (context , index) => Divider(height: 1,color: secondColor.withOpacity(.8),),
          itemCount: sections.length)
    );
  }
  List <SymptomsModel>sections = [];

  loadsection()async {
    DefaultAssetBundle.of(context).loadString('assets/Images/symptoms.json').then((value) {
      var response = json.decode(value);
      response.forEach((section){
        SymptomsModel sectionModel = SymptomsModel.fromJson(section);
        print(sectionModel.symptoms1);
        sections.add(sectionModel);
      });
      setState(() {

      });
    }).catchError((error){
      print(error);
    });
  }

}
