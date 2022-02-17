import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:io';

import 'loginstate.dart';

class CuraLoginCubit extends Cubit<CuraLoginStates>{
  CuraLoginCubit() : super (CuraLoginInatialState());
  static CuraLoginCubit get(context) => BlocProvider.of(context);
  IconData suffix = Icons.visibility;
  bool ispassword = true;
  void ChangeIconsPassword(){
    ispassword = !ispassword;
    suffix = ispassword ?Icons.visibility:Icons.visibility_off;
    emit(ChangePassword());
  }
  bool ?islogin;
  void userLogin({
    required String email,
    required String password,
  }){
    emit(CuraLoginLoadingState());
    FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email
        , password: password
    ).then((value) {

      emit(CuraLoginSuccessfulState(value.user!.uid));

    }).catchError((error){
      emit(CuraLoginErrorState(error.toString()));
    });

  }


}