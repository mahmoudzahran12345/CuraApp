class SymptomsModel{
  String? name;
  String?symptoms1;
  String?symptoms2;
  String?symptoms3;
  String?symptoms4;
  String?symptoms5;
  int?id;
  SymptomsModel(this.name,this.symptoms1,this.id,this.symptoms2,this.symptoms3,this.symptoms4,this.symptoms5);
  SymptomsModel.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    symptoms1=json["symptom1"];
    symptoms2=json["symptom2"];
    symptoms3=json["symptom3"];
    symptoms4=json["symptom4"];
    symptoms5=json["symptom5"];
    id = json["id"];

  }
}