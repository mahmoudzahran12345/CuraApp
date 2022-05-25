import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:graduationproject/models/symptoms/symptommodel.dart';
import '../../layout/webview/webviewscreen.dart';
import '../../shared/components/component.dart';
import '../../shared/styles/colors.dart';

class Diseases extends StatefulWidget {
  final int id ;
  const Diseases({Key? key,required this.id}) : super(key: key);
  @override
  State<Diseases> createState() => _DiseasesState();
}
class _DiseasesState extends State<Diseases> {
  SymptomsModel? symptomsModel;
  void initState() {
    // TODO: implement initState
    loadsection();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:seccolor,
      appBar: AppBar(
        backgroundColor: seccolor,
        elevation: 0.0,
        title: const Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Center(child: Text('Card of Symptoms and Diagnosis',style: TextStyle(color: pramcolor,fontWeight: FontWeight.bold),)),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context,index)=>Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(25.0),
                        color: pramcolor,

                      ),
                      child: Center(
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              Expanded(
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text('${sections[index].name}',style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.white

                                    ),),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10.0,),
                            ],
                          )
                      ),

                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0,top: 4.0),
                          child: Row(
                            children:  [
                              Expanded(
                                child: Text('${sections[index].symptoms1}',style: const TextStyle(
                                  fontSize: 20,
                                  color: pramcolor
                                ),),
                              ),
                              const SizedBox(width: 10.0,),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0,top: 4.0),
                          child: Row(
                            children:  [
                              Expanded(
                                child: Text('${sections[index].symptoms2}',style: const TextStyle(
                                  fontSize: 20,
                                    color: pramcolor,

                                    overflow: TextOverflow.ellipsis
                                ),),
                              ),
                              const SizedBox(width: 10.0,),


                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0,top: 4.0),
                          child: Row(
                            children:  [
                              Expanded(
                                child: Text('${sections[index].symptoms3}',style: const TextStyle(
                                  fontSize: 20,
                                  color: pramcolor,

                                ),),
                              ),
                              const SizedBox(width: 10.0,),


                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0,top: 4.0),
                          child: Row(
                            children:  [
                              Expanded(
                                child: Text('${sections[index].symptoms4}',style: const TextStyle(
                                  fontSize: 20,
                                  color: pramcolor,

                                ),),
                              ),
                              const SizedBox(width: 10.0,),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0,top: 4.0),
                          child: Row(
                            children:  [
                              Expanded(
                                child: Text('${sections[index].symptoms5}',style: const TextStyle(
                                  fontSize: 20,
                                  color: pramcolor,

                                ),),
                              ),
                              const SizedBox(width: 10.0,),
                            ],
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            color: pramcolor,
                            borderRadius: BorderRadiusDirectional.circular(20)
                          ),
                          child: const Center(
                            child: Text(
                              'Medicine',
                              style: TextStyle(
                                  color: seccolor,
                                  fontSize: 25
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0,top: 4.0),
                              child: Row(
                                children:  [
                                  Expanded(
                                    child: Text('${sections[index].medicine1}',style: const TextStyle(
                                        fontSize: 20,
                                        color: pramcolor
                                    ),),
                                  ),
                                  const SizedBox(width: 10.0,),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0,top: 4.0),
                              child: Row(
                                children:  [
                                  Expanded(
                                    child: Text('${sections[index].medicine2}',style: const TextStyle(
                                        fontSize: 20,
                                        color: pramcolor,

                                        overflow: TextOverflow.ellipsis
                                    ),),
                                  ),
                                  const SizedBox(width: 10.0,),


                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0,top: 4.0),
                              child: Row(
                                children:  [
                                  Expanded(
                                    child: Text('${sections[index].medicine3}',style: const TextStyle(
                                      fontSize: 20,
                                      color: pramcolor,

                                    ),),
                                  ),
                                  const SizedBox(width: 10.0,),


                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0,top: 4.0),
                              child: Row(
                                children:  [
                                  Expanded(
                                    child: Text('${sections[index].medicine4}',style: const TextStyle(
                                      fontSize: 20,
                                      color: pramcolor,

                                    ),),
                                  ),
                                  const SizedBox(width: 10.0,),
                                ],
                              ),
                            ),


                          ],
                        ),


                      ],
                    ),

                  ],
                ),
              )
            ],
          ),
          separatorBuilder: (context , index) =>  Container(height: 2,color: pramcolor,),
          itemCount: sections.length)
    );
  }
  List <SymptomsModel>sections = [];

  loadsection()async {
    DefaultAssetBundle.of(context).loadString('assets/Images/symptoms.json').then((value) {
      var response = json.decode(value);
      response.forEach((section){
        SymptomsModel sectionModel = SymptomsModel.fromJson(section);
        //print(sectionModel.symptoms1);
        if(sectionModel.id == widget.id){
          sections.add(sectionModel);
        }
      });
      setState(() {
      });
    }).catchError((error){
      print(error);
    });
  }

}
