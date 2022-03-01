import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduationproject/models/doctor/doctormodel.dart';
import 'package:graduationproject/shared/cubit/register/registerstattes.dart';


class CubitRegister extends Cubit<CuraRegister>{
  CubitRegister() : super (CuraRegisterInatialState());
  static CubitRegister get(context) => BlocProvider.of(context);

  void userRegister({
    required String name,
    required String email,
    required String password,
    required String phone,
    required String gender
  })async{
    emit(CuraRegisterLoadingState());
    await FirebaseAuth.instance.
    createUserWithEmailAndPassword(
        email: email,
        password: password
    )
        .then((value) {

      createUser(name: name, email: email, phone: phone, uId: value.user!.uid,gender: gender);

    }).catchError((error){
      print(error.toString());
      emit(CuraRegisterErrorState(error.toString()));
    });

  }

  void createUser({required String name,required String email,required String phone,required String uId,required String gender}){
    DoctorUserModel model = DoctorUserModel(
      name: name,
      email: email,
      phone: phone,
      uId: uId,
      gender: gender
    );

    FirebaseFirestore.instance.collection('Users').doc(uId).set(model.toMap()).then((value) {
      emit(CuraCreateSuccessfulState());
    }).catchError((error){
      emit(CuraCreateErrorState(error.toString()));
    });
  }

  IconData suffix = Icons.visibility;
  bool ispassword = true;
  void changeiconspasswordre(){
    ispassword = !ispassword;
    suffix = ispassword ?Icons.visibility:Icons.visibility_off;
    emit(changepasswordRegister());
  }

}