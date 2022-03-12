class DoctorUserModel
{
  late String name;
  late String email;
  late String phone;
   String? uId;
  late String gender;

  DoctorUserModel({
    required this.email,
    required this.name,
    required this.phone,
    required this.uId,
    required this.gender
  });
  DoctorUserModel.fromJson(Map<String, dynamic>json)
  {
    email = json['email'];
    name = json['name'];
    phone = json['phone'];
    uId = json['uId'];
    gender=json['gender'];
  }

  Map<String, dynamic>toMap()
  {
    return
      {
        'name' :name,
        'phone':phone,
        'email':email,
        'uId'  :uId,
        'gender':gender
      };
  }
}