class DoctorUserModel
{
  late String name;
  late String email;
  late String phone;
  late String uId;
  late bool isEmailVerified;


  DoctorUserModel({
    required this.email,
    required this.name,
    required this.phone,
    required this.uId,
    required this.isEmailVerified,


  });

  DoctorUserModel.fromJson(Map<String, dynamic>json)
  {
    email = json['email'];
    name = json['name'];
    phone = json['phone'];
    uId = json['uId'];
    isEmailVerified = json['isEmailVerified'];
  }

  Map<String, dynamic>toMap()
  {
    return
      {
        'name' :name,
        'phone':phone,
        'email':email,
        'uId'  :uId,
        'isEmailVerified': isEmailVerified,
      };
  }
}