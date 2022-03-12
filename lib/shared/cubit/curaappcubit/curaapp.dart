import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduationproject/models/doctor/doctormodel.dart';

import 'curaappstate.dart';

class CuraApp extends Cubit<CuraAppState>{
  DoctorUserModel? model;
  CuraApp() : super(CuarAppInatialState());
  static CuraApp get(context) => BlocProvider.of(context);
  IconData suffix = Icons.visibility;
  bool ispassword = true;
  void changeiconspasswordre(){
    ispassword = !ispassword;
    suffix = ispassword ?Icons.visibility:Icons.visibility_off;
    emit(Curachangepassword());
  }
  void updateUser({required String name,required String email,required String phone,required String gender,required String uId })async{
    emit(UpdateUserLoading());
    DoctorUserModel model1 =DoctorUserModel(
        email: email,
        name: name,
        phone: phone,
        uId: uId,
        gender: gender);
    await FirebaseFirestore.instance.collection('Users').doc(uId).update(model1.toMap()).then((value) {
      emit(UpdateUserSuccessful());
    }).catchError((error){
      print(error.toString());
         emit(UpdateUserError(error.toString()));
    });
  }


}