import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:graduationproject/models/symptoms/symptommodel.dart';

import '../../layout/webview/webviewscreen.dart';
import '../../shared/components/component.dart';
import '../../shared/styles/colors.dart';
import '../medcine.dart';

class Diseases extends StatefulWidget {
  final int id ;

  const Diseases({Key? key,required this.id}) : super(key: key);

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
      backgroundColor:seccolor,
      appBar: AppBar(
        backgroundColor: seccolor,
        elevation: 0.0,
        title: const Center(child: Text('Card of Symptoms and Diagnosis',style: TextStyle(color: pramcolor),)),
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
                      crossAxisAlignment: CrossAxisAlignment.end,
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
                        MaterialButton(
                          onPressed: (){
                            navigatto(context, const Medicine());
                          },
                          child: const Text(
                            'Medicine',
                            style: TextStyle(
                              color: pramcolor,
                              fontSize: 25
                            ),
                          ),


                        ),

                      ],
                    ),

                  ],
                ),
              )
            ],
          ),
          separatorBuilder: (context , index) => const Divider(height: 1,color: Colors.grey,),
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
