import 'package:flutter/cupertino.dart';

class SymptomsModel{
  String? name;
  String?symptoms1;
  String?symptoms2;
  String?symptoms3;
  String?symptoms4;
  String?symptoms5;
  String?medicine1;
  String?medicine2;
  String?medicine3;
  String?medicine4;



  int?id;
  SymptomsModel(this.name,this.symptoms1,this.id,this.symptoms2,this.symptoms3,this.symptoms4,this.symptoms5,this.medicine1,this.medicine2,
      this.medicine3,this.medicine4
      );
  SymptomsModel.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    symptoms1=json["symptom1"];
    symptoms2=json["symptom2"];
    symptoms3=json["symptom3"];
    symptoms4=json["symptom4"];
    symptoms5=json["symptom5"];
    medicine1 = json["medicine1"];
    medicine2 = json["medicine2"];
    medicine3 = json["medicine3"];
    medicine4 = json["medicine4"];



    id = json["id"];

  }
}